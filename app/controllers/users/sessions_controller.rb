class Users::SessionsController < Devise::SessionsController
  layout 'login/application'

  private

  def after_sign_in_path_for(_resource)
    if @user.keep_team_id == nil
      select_team_url
    else
      dashboard_url
    end
  end
end
