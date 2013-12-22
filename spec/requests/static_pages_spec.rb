require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "GET /Home Page" do
    before {visit root_path}

    it { should have_content ("Sample App")}
    it { should have_title (full_title ("")) }
    it { should_not have_title ('| Home')}
  end

  describe "GET /Help Page" do
    before {visit help_path}

   	it { should have_content ("Help")}
    it { should have_title (full_title ("Help"))}
  end

  describe "GET /About Page" do
    before {visit about_path}

  	it {should have_content ("About Us")}
  	it { should have_title (full_title ("About Us"))}
  end

  describe "GET /Contant Us" do
    before {visit contact_path}

  	it {should have_content ("Contact Us")}
    it {should have_title (full_title ( "Contact Us"))}
  end

end
