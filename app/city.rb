class City
  ABBREVIATION_MAPPING = {
    "LA" => "Los Angeles",
    "NYC" => "New York City"
  }

  def initialize(string)
    @string = string
  end

  def to_s
    ABBREVIATION_MAPPING[@string] || @string
  end
end
