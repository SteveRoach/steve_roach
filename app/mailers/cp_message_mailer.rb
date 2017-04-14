class CpMessageMailer < ApplicationMailer

  # use your own email address here 
  default :to => "steve_roach@hotmail.com" 
 
  def message_me(msg) 
    @msg = msg 
 
    mail from: @msg.email, subject: @msg.subject, body: @msg.message 
  end 

end
