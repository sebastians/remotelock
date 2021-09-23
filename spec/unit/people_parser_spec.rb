require "spec_helper"

RSpec.describe PeopleParser do
  describe ".parse" do
    subject { described_class.parse(string, format: format) }

    context "when the format is dollar_format" do
      let(:string) { File.read("spec/fixtures/people_by_dollar.txt") }
      let(:format) { :dollar_format }

      it "correctly parses each row" do
        expect(subject[0].to_h).to eq(
          { first_name: "Rhiannon", last_name: "Nolan", birthdate: "30-4-1974", city: "LA" }
        )

        expect(subject[1].to_h).to eq(
          { first_name: "Rigoberto", last_name: "Bruen", birthdate: "5-1-1962", city: "NYC" }
        )
      end
    end

    context "when the format is percent_format" do
      let(:string) { File.read("spec/fixtures/people_by_percent.txt") }
      let(:format) { :percent_format }

      it "correctly parses each row" do
        expect(subject[0].to_h).to eq(
          { first_name: "Mckayla", birthdate: "1986-05-29", city: "Atlanta" }
        )

        expect(subject[1].to_h).to eq(
          { first_name: "Elliot", birthdate: "1947-05-04", city: "New York City" }
        )
      end
    end
  end
end
