require 'spec_helper'


describe "Static Pages" do

	describe "Home Page" do 
		it "should have the content 'Sample App'" do
			visit root_path 
			expect(page).to have_content('Sample App')
		end
		it "Should have the base title 'Sample App'" do
			visit root_path
			expect(page).to have_title('Sample App')
		end

		it "should not have a custom page title" do
			visit root_path
			expect(page).not_to have_title('Home')
		end
	end	

	describe "Help Page" do
		it "should have the content 'Help'" do
			visit help_path
			expect(page).to have_content('Help')
		end
		it "should have the title 'Sample App | Help'" do
			visit help_path
			expect(page).to have_title('Sample App | Help')
		end
	end

	describe "About Page" do
		it "should have the content 'About Us'." do
			visit about_path
			expect(page).to have_content('About Us')
		end
		it "should have the title 'Sample App | About Us'" do
			visit about_path
			expect(page).to have_title('Sample App | About')
		end
	end

	describe "Contact page" do

		it "should have the content 'Contact'" do
			visit contact_path
			expect(page).to have_content('Contact')
		end
		it "should have the title 'Contact'" do
			visit contact_path
			expect(page).to have_title('Sample App | Content')
		end
	end
end



