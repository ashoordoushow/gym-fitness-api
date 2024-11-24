class UserMailer < ApplicationMailer
  default from: 'no-reply@example.com'

  def forgot_password(user)
    @user = user
    @reset_code = user.reset_code
    mail(to: @user.email, subject: "Password Reset Code")
  end
end