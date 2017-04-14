require "rails_helper"   
 
RSpec.feature "Send Contact Message", :type => :feature do   
    before(:each) do 
        @msg = FactoryGirl.build(:cp_message) 
    end 
 
    scenario "displays thank you message for valid entries" do   
        # puts ("@msg.name: #{@msg.name}") 
        # puts ("@msg.email: #{@msg.email}") 
        # puts ("@msg.subject: #{@msg.subject}") 
        # puts ("@msg.message: #{@msg.message}") 
 
        visit "/cp_messages/new"  
 
        fill_in "Name", with: @msg.name 
        fill_in "Email", with: @msg.email 
        fill_in "Subject", with: @msg.subject 
        fill_in "Message", with: @msg.message 
 
        click_button "Send" 
 
        expect(page).to have_text("Thank you for your message.") 
    end  
     
    scenario "increments the Action Mailers by 1" do   
        visit "/cp_messages/new"  
 
        fill_in "Name", with: @msg.name 
        fill_in "Email", with: @msg.email 
        fill_in "Subject", with: @msg.subject 
        fill_in "Message", with: @msg.message 
 
        ActionMailer::Base.deliveries.clear 
 
        click_button "Send" 
 
        expect(ActionMailer::Base.deliveries.size).to eql(1) 
 
        ActionMailer::Base.deliveries.clear 
    end  

    scenario "displays error message for blank name" do   
        visit "/cp_messages/new"  
 
        fill_in "Name", with: "" 
        fill_in "Email", with: @msg.email 
        fill_in "Subject", with: @msg.subject 
        fill_in "Message", with: @msg.message 
 
        click_button "Send" 
 
        expect(page).to have_text("Name can't be blank") 
    end  
     
    scenario "displays error message for too long name" do   
        visit "/cp_messages/new"  
 
        fill_in "Name", with: "a" * 51 
        fill_in "Email", with: @msg.email 
        fill_in "Subject", with: @msg.subject 
        fill_in "Message", with: @msg.message 
 
        click_button "Send" 
 
        expect(page).to have_text("50 characters is the maximum allowed") 
    end  
     
    scenario "displays error message for blank email" do   
        visit "/cp_messages/new"  
 
        fill_in "Name", with: @msg.name 
        fill_in "Email", with: "" 
        fill_in "Subject", with: @msg.subject 
        fill_in "Message", with: @msg.message 
 
        click_button "Send" 
 
        expect(page).to have_text("Email can't be blank") 
    end  
     
    scenario "displays error message for too long email address" do   
        visit "/cp_messages/new"  
 
        fill_in "Name", with: @msg.name 
        fill_in "Email", with: ("a" * 245) + "@domain.com" 
        fill_in "Subject", with: @msg.subject 
        fill_in "Message", with: @msg.message 
 
        click_button "Send" 
 
        expect(page).to have_text("255 characters is the maximum allowed") 
    end  
     
    scenario "displays error message for wrongly formatted email address" do   
        visit "/cp_messages/new"  
 
        fill_in "Name", with: @msg.name 
        fill_in "Email", with: "user@foo,com" 
        fill_in "Subject", with: @msg.subject 
        fill_in "Message", with: @msg.message 
 
        click_button "Send" 
 
        expect(page).to have_text("Email format is invalid") 
    end  
     
    scenario "displays error message for blank subject" do   
        visit "/cp_messages/new"  
 
        fill_in "Name", with: @msg.name 
        fill_in "Email", with: @msg.email 
        fill_in "Subject", with: "" 
        fill_in "Message", with: @msg.message 
 
        click_button "Send" 
 
        expect(page).to have_text("Subject can't be blank") 
    end  
     
    scenario "displays error message for too long subject" do   
        visit "/cp_messages/new"  
 
        fill_in "Name", with: @msg.name 
        fill_in "Email", with: @msg.email 
        fill_in "Subject", with: "a" * 101 
        fill_in "Message", with: @msg.message 
 
        click_button "Send" 
 
        expect(page).to have_text("100 characters is the maximum allowed") 
    end  
     
    scenario "displays error message for blank message" do   
        visit "/cp_messages/new"  
 
        fill_in "Name", with: @msg.name 
        fill_in "Email", with: @msg.email 
        fill_in "Subject", with: @msg.subject 
        fill_in "Message", with: "" 
 
        click_button "Send" 
 
        expect(page).to have_text("Message can't be blank") 
    end  
     
end