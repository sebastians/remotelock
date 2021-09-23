class People
  def self.build_from(**formats)
    new(**formats).build
  end

  def initialize(**formats)
    @formats = formats
  end

  def build
    build_people_from_each_format.flatten
  end

  private

  attr_reader :formats

  def build_people_from_each_format
    formats.map do |format, raw_content|
      Parsers::LIST[format].parse(raw_content).map do |row|
        Person.new(**row.to_h)
      end
    end
  end
end
