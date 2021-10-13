require "date"

class BirthDate
  PERIOD_SEPARATED_DATE_FORMAT = /\d{1,2}\.\d{1,2}\.\d{4}/

  def initialize(string)
    @string = string
  end

  def to_s
    date.strftime("%-m/%-d/%Y")
  end

  def date
    @date ||= parse_date
  end

  def <=>(other_birth_date)
    date <=> other_birth_date.date
  end

  private

  attr_reader :string

  def parse_date
    if string.match(PERIOD_SEPARATED_DATE_FORMAT)
      Date.strptime(string.gsub(".", "-") ,"%m-%d-%Y")
    else
      Date.parse(string)
    end
  end
end
