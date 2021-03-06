require 'spec_helper'

describe "Static pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  describe "Home page" do
    it "should have the h1 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text=>'Sample App')
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text=>'Help')
    end
  end

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text=>'About Us')
    end
  end
  
  describe "Contact page" do
    it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text=>'Contact Us')
    end
    
    it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text=>"#{base_title} | Contact Us")
    end
  end

end
