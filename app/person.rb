class Person
  attr_reader :first_name, :last_name

  def initialize(first_name:, last_name: nil, birthdate:, city:)
    @first_name = first_name
    @last_name = last_name
    @birthdate = birthdate
    @city = city
  end

  def to_s
    [first_name, city, birthdate].join(", ")
  end

  def city
    City.new(@city)
  end

  def birthdate
    BirthDate.new(@birthdate)
  end
end
