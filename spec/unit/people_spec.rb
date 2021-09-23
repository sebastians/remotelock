require "spec_helper"

RSpec.describe People do
  describe ".build_from" do
    let(:dollar_separated_values) { File.read("spec/fixtures/people_by_dollar.txt") }
    let(:percent_separated_values) { File.read("spec/fixtures/people_by_percent.txt") }

    subject { described_class.build_from(dollar_format: dollar_separated_values, percent_format: percent_separated_values) }

    it "returns a Person instance for each row" do
      expect(subject[0]).to be_a Person
      expect(subject[1]).to be_a Person
      expect(subject[2]).to be_a Person
      expect(subject[3]).to be_a Person
    end
  end
end
