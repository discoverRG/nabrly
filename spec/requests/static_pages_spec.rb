require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "LocalItch" }

  describe "Home page" do

    it "should have the h1 'Nabrly'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'LocalItch')
    end

    it "should have the title 'LocalItch'" do
      visit '/static_pages/home'
      page.should have_selector('title',
        :text => 'LocalItch')
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
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
        :text => "#{base_title} | Support")
    end
  end

  describe "About page" do

    it "should have the h1 'About LocalItch'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About LocalItch')
    end

    it "should have the title 'About LocalItch'" do
      visit '/static_pages/about'
      page.should have_selector('title',
        :text => "#{base_title} | About LocalItch")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
        :text => "#{base_title} | Contact")
    end
  end
end