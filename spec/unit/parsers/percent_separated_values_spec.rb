require 'spec_helper'

RSpec.describe Parsers::PercentSeparatedValues do
  describe ".parse" do
    let(:string) { File.read("spec/fixtures/people_by_percent.txt") }

    subject { described_class.parse(string) }

    it "parses entries where values are separated by percent signs" do
      expect(subject[0].to_h).to eq(
        { first_name: "Mckayla", birthdate: "1986-05-29", city: "Atlanta" }
      )

      expect(subject[1].to_h).to eq(
        { first_name: "Elliot", birthdate: "1947-05-04", city: "New York City" }
      )
    end
  end
end
