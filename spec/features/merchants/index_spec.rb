require 'rails_helper'

RSpec.describe "Merchant index" do
  describe "when i visit /merchants" do
    it "lists all of the merchants by name" do
      visit "/merchants"

      expect(page).to have_content("62")
      expect(page).to have_content("merchant")
      expect(page).to have_content("Schroeder-Jerde")
      expect(page).to_not have_content("101")
      expect(page).to_not have_content("customer")
      expect(page).to_not have_content("Yankee Doodle")
    end

    it "shows all merchant names as links that redirect to /merchants/:id, individual show page" do
      attrs = {
        id: "1",
        type: "merchant",
        attributes: {
          name: "Schroeder-Jerde"
        }
      }
  
      merchant = Merchant.new(attrs)

      visit "/merchants"

      
      expect(page).to have_link(merchant.name)
      click_link(merchant.name)
      
      expect(current_path).to eq(merchant_path(merchant.id))
    end
  end
end