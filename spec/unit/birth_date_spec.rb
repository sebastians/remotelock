require "spec_helper"

RSpec.describe BirthDate do
  describe "#<=>" do
    it "allows comparing two BirthDate instances" do
      future_date = described_class.new("2021/12/31")
      past_date = described_class.new("2021/01/01")
      dates = [future_date, past_date]

      expect(dates.sort).to eq [past_date, future_date]
    end
  end
end
