require "spec_helper"

RSpec.describe Person do
  describe "#to_s" do
    subject { described_class.new(first_name: "Francisco", birthdate: "5-1-1992", city: "NYC") }

    it "returns the first name, city and birth date separated by comas" do
      expect(subject.to_s).to eq "Francisco, New York City, 1/5/1992"
    end
  end
end
