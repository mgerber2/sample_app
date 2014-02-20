require 'spec_helper'

describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
     describe "Home page" do
        it "should have the content 'Sample App'" do
            visit '/static_pages/home'
            expect(page).to have_content('Sample App')
        end
        it "should have the title 'Home'" do
            visit '/static_pages/home'
            expect(page).to have_title("CS 232 Rails Development | Home")
        end
     end
     describe "Help page" do
         it "should have the content 'Help'" do
             visit '/static_pages/help'
             expect(page).to have_content('Help')
         end
         it "should have the title 'Help'" do
             visit '/static_pages/help'
             expect(page).to have_title("CS 232 Rails Development | Help")
         end
    end
     describe "About page" do
         it "should have the content 'About Us'" do
             visit '/static_pages/about'
             expect(page).to have_content('About Us')
         end
         it "should have the title 'About Us'" do
             visit '/static_pages/about'
             expect(page).to have_title("CS 232 Rails Development | About Us")
         end
# some preliminary tests before doing homework to
# refine use of syntax of the tests
         it "should have the 'h1' element" do
             visit '/static_pages/about'
             expect(page).to have_selector("h1", class: 'page-title')
         end
         it "should have the 'dl' element" do
             visit '/static_pages/about'
             expect(page).to have_selector("dl")
         end
         it "should have the 'dt' element" do
             visit '/static_pages/about'
             expect(page).to have_selector("dt")
         end
         it "should have the 'dd' element" do
             visit '/static_pages/about'
             expect(page).to have_selector("dd")
         end
         it "should have the 'section' element" do
             visit '/static_pages/about'
             expect(page).to have_selector("section", class: 'main')
         end
         it "should have the 'h1.page-title' element" do
             visit '/static_pages/about'
             expect(page).to have_selector("h1.page-title")
         end
         it "should have the '.main' element" do
             visit '/static_pages/about'
             expect(page).to have_selector(".main")
         end
      end
     describe "Contact page" do
         it "shound have the content 'Contact'" do
             visit '/static_pages/contact'
             expect(page).to have_content('Contact')
         end
         it "should have the title 'Contact'" do
             visit '/static_pages/contact'
             expect(page).to have_title("CS 232 Rails Development | Contact") 
         end
         it "should have the 'h1' element" do
             visit '/static_pages/contact'
             expect(page).to have_selector("h1", class: 'page-title')
         end
         it "should have the 'dl' element" do
             visit '/static_pages/contact'
             expect(page).to have_selector("dl")
         end
         it "should have the 'dt' element" do
             visit '/static_pages/contact'
             expect(page).to have_selector("dt")
         end
         it "should have the 'dd' element" do
             visit '/static_pages/contact'
             expect(page).to have_selector("dd")
         end
         it "should have the 'section' element" do
             visit '/static_pages/contact'
             expect(page).to have_selector("section", class: 'main')
         end
         it "should have the 'h1.page-title' element" do
             visit '/static_pages/contact'
             expect(page).to have_selector("h1.page-title")
         end
         it "should have the '.main' element" do
             visit '/static_pages/contact'
             expect(page).to have_selector(".main")
         end
     end
end
