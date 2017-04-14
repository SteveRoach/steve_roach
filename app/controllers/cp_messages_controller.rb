class CpMessagesController < ApplicationController

   def new  
    @cp_message = CpMessage.new  
  end  
 
  def create  
    @cp_message = CpMessage.new(message_params)  
 
    if @cp_message.valid?  
       @cp_message.subject = "Contact Page - " + @cp_message.subject 
       CpMessageMailer.message_me(@cp_message).deliver_now 
      redirect_to new_cp_message_path, notice: "Thank you for your message."  
    else  
      render :new  
    end  
  end  
 
  private  
 
    def message_params  
      params.require(:cp_message).permit(:name, :email, :subject, :message)  
    end  
end
