class UserNotifierMailer < ApplicationMailer
    default :from => 'any_from_address@example.com'
    
      def send_signup_email(user)
        @user = User.first
        mail( :to => @user.email,
        :subject => 'Thanks for signing up for our amazing app' )
      end


end
