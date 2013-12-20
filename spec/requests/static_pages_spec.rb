require 'spec_helper'

describe "StaticPages" do

	let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  
  describe "GET /Home Page" do
    before {visit root_path}

    it "should have the content 'sample App'" do
    	expect(page).to have_content("Sample App")
    end

    it "should have the title 'Home'" do
    	expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "GET /Help Page" do
    before {visit help_path}

   	it "should have the content 'Help'" do
   		expect(page).to have_content("Help")
    end

    it "should have the title 'Home'" do
    	expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "GET /About Page" do
    before {visit about_path}

  	it "should have the content 'About Us'" do
  		expect(page).to have_content("About Us")
  	end

  	it "should have the title 'About Us'" do
    	expect(page).to have_title("#{base_title} | About Us")
    end
  end

  describe "GET /Contant Us" do
    before {visit contact_path}

  	it "should have the content 'Contact Us'" do
  		expect(page).to have_content("Contact Us")
  	end

  	it "should have the title 'Contact Us'" do
  		expect(page).to have_title("#{base_title} | Contact Us")
  	end
  end

end
