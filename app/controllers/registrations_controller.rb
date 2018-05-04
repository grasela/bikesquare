class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    new_profile_path
  end
  def after_sign_in_path_for(resource)
    new_profile_path if current_user.profile.nil?
  end


end
