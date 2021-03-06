class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :current_user_age, if: :user_signed_in?
  before_action :current_post, if: :user_signed_in?

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == '1111'
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :date_of_birth, :introduction, :how_long_play, :how_long_blank, :how_long_band, :how_many_band, :how_many_compose, :favorite_artist, :URL, :career, :active_day_id, :character_id, :genre_id, :leader_or_member_id, :prefecture_id, :sex_id, :skill_id, :what_play_id])
  end

  def current_user_age
    @current_user_age = (Date.today.strftime("%Y%m%d").to_i - current_user.date_of_birth.strftime("%Y%m%d").to_i)/ 10000
  end

  def current_post
      @current_post = Post.find_by(user_id: current_user.id)
  end
end
