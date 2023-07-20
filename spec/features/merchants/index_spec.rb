require 'rails_helper'

# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.

RSpec.describe "Merchant index" do
  describe "when i visit /merchants" do
    it "lists all of the merchants by name" do
      visit "/merchants"
      save_and_open_page

      expect(page).to have_content("")
    end
  end
end