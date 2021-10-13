require "date"

class BirthDate
  def initialize(string)
    @string = string
  end

  def to_s
    date.strftime("%-m/%-d/%Y")
  end

  def date
    @date ||= Date.parse(@string)
  end

  def <=>(other_birth_date)
    date <=> other_birth_date.date
  end
end
