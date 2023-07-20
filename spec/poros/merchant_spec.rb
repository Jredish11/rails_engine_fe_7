require "rails_helper"

RSpec.describe Merchant do
  it "exists" do

    attrs = {
      id: "1",
      type: "merchant",
      attributes: {
        name: "Jimmy"
      }
    }

    merchant = Merchant.new(attrs)

    expect(merchant).to be_a(Merchant)
    expect(merchant.id).to eq("1")
    expect(merchant.type).to eq("merchant")
    expect(merchant.name).to eq("Jimmy")
  end
end
