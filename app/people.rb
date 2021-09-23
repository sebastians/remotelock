class People
  def self.build_from(**formats)
    formats.map do |format, raw_content|
      new(format: format, raw_content: raw_content).build
    end.flatten
  end

  def initialize(format:, raw_content:)
    @format = format
    @raw_content = raw_content
  end

  def build
    PeopleParser.parse(@raw_content, format: @format).map do |parsed_row|
      Person.new(**parsed_row.to_h)
    end
  end
end
