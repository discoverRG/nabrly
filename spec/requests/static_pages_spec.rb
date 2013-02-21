require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Nabrly'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Nabrly')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
        :text => "Nabrly | Home")
    end
  end

  describe "Support page" do

    it "should have the h1 'Support'" do
      visit '/static_pages/support'
      page.should have_selector('h1', :text => 'Support')
    end

    it "should have the title 'Support'" do
      visit '/static_pages/support'
      page.should have_selector('title',
        :text => "Nabrly | Support")
    end
  end

  describe "About page" do

    it "should have the h1 'About Nabrly'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Nabrly')
    end

    it "should have the title 'About Nabrly'" do
      visit '/static_pages/about'
      page.should have_selector('title',
        :text => "Nabrly | About Nabrly")
    end
  end
end