require "rails_helper"  
 
RSpec.feature "Render Cat Play Pages", :type => :feature do  
    scenario "displays the Cat Play Home page elements correctly - via /" do  
        visit "/"  
 
        # Page title 
        expect(page).to have_title('Cat Play')  
 
    end 
 
    scenario "displays the Cat Play Home page elements correctly - via URL" do  
        visit "/cp_home"  
 
        # Page title 
        expect(page).to have_title('Cat Play')  
 
    end 
 
    scenario "displays the Cat Play Journal elements correctly" do  
        visit "/cp_journal"  
 
        # Page title 
        expect(page).to have_title('Cat Play | Journal')  
 
    end 
 
    scenario "displays the Cat Play Technical elements correctly" do  
        visit "/cp_technical"  
 
        # Page title 
        expect(page).to have_title('Cat Play | Technical')  
 
    end 
 
    scenario "displays the Cat Play Contact elements correctly" do  
        visit "/cp_contact"  
 
        # Page title 
        expect(page).to have_title('Cat Play | Contact')  
 
    end 
end 

