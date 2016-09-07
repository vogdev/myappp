require "rails_helper"

RSpec.describe "Creating post" do
   scenario "successfully" do
   	visit root_path
   	click_on "Write a story"

   	fill_in "Title", with: "My first post"
   	fill_in "Body", with: "Some awesome content"
   	click_on "Publish"

   	expect(page).to have_content "My first post "
   end
end