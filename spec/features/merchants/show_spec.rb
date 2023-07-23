require 'rails_helper'

# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.
RSpec.describe "Merchant show page" do
  describe "when i visit /merchants/:id/" do
    before(:each) do
      attrs = {
        id: "1",
        type: "merchant",
        attributes: {
          name: "Schroeder-Jerde"
        }
      }

      merchant = Merchant.new(attrs)

      visit merchant_path(merchant.id)
    end
  
    it "lists all of the items the merchant sells" do
      save_and_open_page
      expect(page).to have_content("4")
      expect(page).to have_content("item")
      expect(page).to have_content("Item Et Cumque")
      expect(page).to_not have_content("23")
      expect(page).to_not have_content("merchant")
      expect(page).to_not have_content("Burger")
    end
  end
end


