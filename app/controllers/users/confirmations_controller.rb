class Users::ConfirmationsController < Devise::ConfirmationsController

  def create
    # ここから！
    super
  end

  def show
    if params[:confirmation_token].present?
      @original_token = params[:confirmation_token]
    elsif params[resource_name].try(:[], :confirmation_token).present?
      @original_token = params[resource_name][:confirmation_token]
    end

    self.resource = resource_class.find_by_confirmation_token Devise.token_generator.
      digest(self, :confirmation_token, @original_token)

    # 登録済みかどうか
    if resource.nil? or resource.confirmed? 
      # IDが見つからなければ登録画面へ
      if resource_class.where(id: params[:format]).blank? 
        return redirect_to new_registration_path(resource_name)
      end
      # ログイン画面へ
      return redirect_to new_session_path(resource_name)
    end 
    # 新しいパスワード発行画面へ遷移
  end

  def confirm
    @original_token = params[resource_name].try(:[], :confirmation_token)
    digested_token = Devise.token_generator.digest(self, :confirmation_token, @original_token)
    self.resource = resource_class.find_by_confirmation_token! digested_token
    resource.assign_attributes(permitted_params)

    if resource.valid? && resource.password_match?
      self.resource.confirm!
      set_flash_message :notice, :confirmed
      sign_in_and_redirect resource_name, resource
    else
      render :action => 'show'
    end
  end

 private
   def permitted_params
     params.require(resource_name).permit(:confirmation_token, :password, :password_confirmation)
   end

end