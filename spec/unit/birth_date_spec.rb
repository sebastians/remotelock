require "spec_helper"

RSpec.describe BirthDate do
  describe "#<=>" do
    let(:newer_date) { described_class.new("2021/12/31") }
    let(:older_date) { described_class.new("2021/01/01") }
    let(:unsorted_dates) { [newer_date, older_date] }

    it "allows sorting BirthDate instances" do
      expect(unsorted_dates.sort).to eq [older_date, newer_date]
    end
  end
end
