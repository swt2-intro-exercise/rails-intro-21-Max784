require 'rails_helper'

 describe "index author page", type: :feature do
   it "should exist at 'author_path' and render withour error" do
     # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
     visit "authors"
   end
  it "should have table, with the headings Name and Homepage and Link to personal side " do
    visit "authors"
    
    expect(page).to have_link 'New', href: new_author_path
    expect(page).to have_content("First Name")
    expect(page).to have_content("Last Name")
    expect(page).to have_content("Homepage")

  end
  
 end
