require 'spec_helper'

RSpec.describe Parsers::DollarSeparatedValues do
  describe ".parse" do
    let(:string) { File.read("spec/fixtures/people_by_dollar.txt") }

    subject { described_class.parse(string) }

    it "parses entries where values are separated by dollar signs" do
      expect(subject[0].to_h).to eq(
        { first_name: "Rhiannon", last_name: "Nolan", birthdate: "30-4-1974", city: "LA" }
      )

      expect(subject[1].to_h).to eq (
        { first_name: "Rigoberto", last_name: "Bruen", birthdate: "5-1-1962", city: "NYC" }
      )
    end
  end
end
