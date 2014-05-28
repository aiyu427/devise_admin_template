class UserInfosController < ApplicationController
  before_filter :authenticate_user!

  # GET /resource/edit
  def edit
    set_user_info
  end

  # PUT /resource
  def update
    current_user.user_info.update!(user_info_params)
    flash.notice = "更新しました。"
    redirect_to edit_user_infos_path
  rescue
    flash.alert = "更新に失敗しました。"
    set_user_info
    render :edit
  end

  private

    def set_user_info
      @user_info = current_user.user_info
    end

    def user_info_params
      params.require(:user_info).permit(
        :firstname,
        :lastname,
        :firstname_kana,
        :lastname_kana,
        :tel,
        :sex,
        :zip_code,
        :address1,
        :address2,
        :birthday
        )
    end

end
