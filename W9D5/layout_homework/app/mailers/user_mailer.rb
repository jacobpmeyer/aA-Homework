class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url = 'localhost:3000'
    mail(to: user.username, subject: 'Welocome to my cats homework!')
  end
end
