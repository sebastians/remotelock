class PeopleController
  def initialize(params)
    @params = params
  end

  def normalize
    people = People.build_from(**formats)
    people.sort_by(&sorting_attribute).map(&:to_s)
  end

  private

  attr_reader :params

  def formats
    params.except(:order)
  end

  def sorting_attribute
    params[:order].to_sym
  end
end
