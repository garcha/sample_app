require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "GET /Home Page" do
    before {visit root_path}

    it { should have_selector('h1', text:'Sample App') }
    it { should have_title (full_title ("")) }
    it { should_not have_title ('| Home')}
  end

  describe "GET /Help Page" do
    before {visit help_path}

   	it { should have_selector('h1', text:'Help')}
    it { should have_title (full_title ("Help"))}
  end

  describe "GET /About Page" do
    before {visit about_path}

  	it {should have_selector('h1', text:'About Us')}
  	it { should have_title (full_title ("About Us"))}
  end

  describe "GET /Contant Us" do
    before {visit contact_path}

  	it {should have_selector('h1', text:'Contact Us')}
    it {should have_title (full_title ( "Contact Us"))}
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About Us"
    expect(page).to have_title (full_title('About Us'))
    click_link "Help"
    expect(page).to have_title (full_title('Help'))
    click_link "Contact"
    expect(page).to have_title (full_title('Contact Us'))
    click_link "Home"
    expect(page).to have_title (full_title(''))
    click_link "Signup"
    expect(page).to have_title (full_title('Sign Up'))
    click_link "sample app"
    expect(page).to have_title (full_title(''))
  end
end








