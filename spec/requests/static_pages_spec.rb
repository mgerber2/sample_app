require 'spec_helper'

describe "StaticPages" do
     subject { page }
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
     describe "Home page" do
        before { visit root_path }

        it { should have_content('Sample App') }
        it { should have_title(full_title('')) }
        it { should_not have_title('| Home') }
     end
     describe "Help page" do
        before { visit help_path }
        it { should have_content('Help') }
        it { should have_title(full_title('Help')) }
     end
     describe "About page" do
         before { visit about_path }
         it { should have_content("About Us") }
         it { should have_title(full_title('About Us')) }
         it { should have_selector("h1.page-title") }
         it { should have_selector("dl") }
         it { should have_selector("dt") }
         it { should have_selector("dd") }
         it { should have_selector("section.main") }
         it { should have_css("h1.page-title") }
         it { should have_css(".main") }
     end
     describe "Contact page" do
         before { visit contact_path }
         it { should have_content("Contact") }
         it { should have_title(full_title('Contact')) }
         it { should have_selector("h1.page-title") }
         it { should have_selector("dl") }
         it { should have_selector("dt") }
         it { should have_selector("dd") }
         it { should have_selector("section.main") }
         it { should have_css("h1.page-title") }
         it { should have_css(".main") }
     end
end
