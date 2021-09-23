require "date"

class BirthDate
  def initialize(string)
    @string = string
  end

  def to_s
    Date.parse(@string).strftime("%-m/%-d/%Y")
  end
end
