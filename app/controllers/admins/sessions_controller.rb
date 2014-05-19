class Admins::SessionsController < Devise::SessionsController

  def after_sign_in_path_for(resource)
    rails_admin_path
  end

end