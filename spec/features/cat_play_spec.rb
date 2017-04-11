require "rails_helper"  
 
RSpec.feature "Render Cat Play Pages", :type => :feature do  
    scenario "displays the Cat Play Home page elements correctly - via /" do  
        visit "/"  
 
        # Page title 
        expect(page).to have_title('Cat Play')  
 
        # Favicon  
        icon_link_count = page.all(:css, 'link[rel~="icon"]', visible: false).count 
        expect(icon_link_count).to eql(1)  
 
        page.all(:css, 'link[rel~="icon"]', visible: false).each do |fav|  
            visit fav[:href]  
            expect(page).to have_http_status(:success)  
        end  

        # Logo  
        visit "/"  
        logo_link_count = page.all(:css, 'img[alt~="Logo"]').count 
        expect(logo_link_count).to eql(1)  
 
        page.all(:css, 'img[alt~="Logo"]').each do |fav|  
            visit fav[:href]  
            expect(page).to have_http_status(:success)  
        end  
    end 
 
    scenario "displays the Cat Play Home page elements correctly - via URL" do  
        visit "/cp_home"  
 
        # Page title 
        expect(page).to have_title('Cat Play')  
 
        # Favicon 
        #  Already done in previous test 

    end 
 
    scenario "displays the Cat Play Journal elements correctly" do  
        visit "/cp_journal"  
 
        # Page title 
        expect(page).to have_title('Cat Play | Journal')  
 
        # Favicon  
        icon_link_count = page.all(:css, 'link[rel~="icon"]', visible: false).count 
        expect(icon_link_count).to eql(1)  
 
        page.all(:css, 'link[rel~="icon"]', visible: false).each do |fav|  
            visit fav[:href]  
            expect(page).to have_http_status(:success)  
        end  

     end 
 
    scenario "displays the Cat Play Technical elements correctly" do  
        visit "/cp_technical"  
 
        # Page title 
        expect(page).to have_title('Cat Play | Technical')  
 
        # Favicon  
        icon_link_count = page.all(:css, 'link[rel~="icon"]', visible: false).count 
        expect(icon_link_count).to eql(1)  
 
        page.all(:css, 'link[rel~="icon"]', visible: false).each do |fav|  
            visit fav[:href]  
            expect(page).to have_http_status(:success)  
        end  

     end 
 
    scenario "displays the Cat Play Contact elements correctly" do  
        visit "/cp_contact"  
 
        # Page title 
        expect(page).to have_title('Cat Play | Contact')  
 
        # Favicon  
        icon_link_count = page.all(:css, 'link[rel~="icon"]', visible: false).count 
        expect(icon_link_count).to eql(1)  
 
        page.all(:css, 'link[rel~="icon"]', visible: false).each do |fav|  
            visit fav[:href]  
            expect(page).to have_http_status(:success)  
        end  

     end 
end 

