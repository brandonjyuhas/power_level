class RegistrationsController < Devise::RegistrationsController

  private

  # Extend Devise to accept username
  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :icon_url)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
  end
end