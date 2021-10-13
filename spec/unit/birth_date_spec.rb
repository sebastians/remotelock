require "spec_helper"

RSpec.describe BirthDate do
  describe "#date" do
    let(:string) { "1986-05-29" }

    subject { described_class.new(string) }

    it "returns a Date object from the parsed String" do
      expect(subject.date).to eq Date.new(1986, 05, 29)
    end

    context "when the String uses periods (.) as separators" do
      let(:string) { "1.15.1995" }

      it "still returns a Date object from the parsed String" do
        expect(subject.date).to eq Date.new(1995, 01, 15)
      end
    end
  end

  describe "#<=>" do
    let(:newer_date) { described_class.new("2021/12/31") }
    let(:older_date) { described_class.new("2021/01/01") }
    let(:unsorted_dates) { [newer_date, older_date] }

    it "allows sorting BirthDate instances" do
      expect(unsorted_dates.sort).to eq [older_date, newer_date]
    end
  end
end
