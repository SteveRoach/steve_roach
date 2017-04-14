require "rails_helper"  
 
RSpec.feature "Site navigation", :type => :feature do  
    scenario "'/' navigation goes to the Home page" do  
        visit "/" 
        click_link('', :href => '/') 
        expect(page).to have_title('Cat Play') 
    end 
 
    scenario "'/cp_journal' navigation goes to the Journal page" do  
        visit "/" 
        click_link('', :href => '/cp_journal') 
        expect(page).to have_title('Cat Play | Journal') 
    end 
 
    scenario "'/cp_technical' navigation goes to the Technical page" do  
        visit "/" 
        click_link('', :href => '/cp_technical') 
        expect(page).to have_title('Cat Play | Technical') 
    end 
 
    scenario "'/cp_messages/new' navigation goes to the Contact page" do  
        visit "/" 
        click_link('', :href => '/cp_messages/new') 
        expect(page).to have_title('Cat Play | Contact') 
    end 
 
end  
