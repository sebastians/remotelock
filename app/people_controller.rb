class PeopleController
  def initialize(params)
    @params = params
  end

  def normalize
    people = People.build_from(dollar_separated: params[:dollar_format], percent_separated: params[:percent_format])
    people.sort_by(&sorting_attribute).map(&:to_s)
  end

  private

  attr_reader :params

  def sorting_attribute
    params[:order].to_sym
  end
end
