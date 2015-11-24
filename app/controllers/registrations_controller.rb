class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:player).permit(:name, :email, :password, :password_confirmation, :rank, :rxp, :squad_id, :is_leader)
  end

  def account_update_params
    params.require(:player).permit(:name, :email, :password, :password_confirmation, :rank, :rxp, :squad_id, :is_leader, :current_password)
  end
end