class PasswordsController < ApplicationController
  def forgot
    user = User.find_by(email: params[:email])
    if user
      user.update(reset_code: rand(10000..99999)) # Generate a 5-digit reset code
      UserMailer.forgot_password(user).deliver_now # Send reset email
      render json: { message: "Reset code sent to your email." }, status: :ok
    else
      render json: { error: "Email not found." }, status: :not_found
    end
  end

  def verify_code
    user = User.find_by(email: params[:email], reset_code: params[:reset_code])
    if user
      render json: { message: "Code verified." }, status: :ok
    else
      render json: { error: "Invalid code or email." }, status: :unprocessable_entity
    end
  end

  def reset
    user = User.find_by(email: params[:email], reset_code: params[:reset_code])
    if user
      if params[:new_password] == params[:confirm_password]
        user.update(password: params[:new_password], reset_code: nil) # Clear the reset code
        render json: { message: "Password reset successfully." }, status: :ok
      else
        render json: { error: "Passwords do not match." }, status: :unprocessable_entity
      end
    else
      render json: { error: "Invalid email or reset code." }, status: :unprocessable_entity
    end
  end
end
