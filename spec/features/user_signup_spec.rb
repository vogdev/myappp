require "rails_helper"

RSpec.describe "User signing up" do
   scenario "successfully" do
   	visit new_user_registration_path 
           fill_in  "Username", with: "logouser"
   	fill_in  "Email", with: "logo@logo.com"
   	fill_in "Password", with: "Password"
   	fill_in "Password confirmation", with: "Password"
   	click_on "Sign up"

   	expect(page).to have_content "logo@logo.com"   	
   end
      scenario "unsuccessfully" do
   	visit new_user_registration_path
   	fill_in  "Email", with: "logo@logo.com"
   	fill_in "Password", with: ""
   	fill_in "Password confirmation", with: ""
   	click_on "Sign up"

   	expect(page).to have_content "error"   	
   end
end