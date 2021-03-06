# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  def new
    @user = User.new
    unless session["devise.regist_data"].blank?
      @user = User.new(session["devise.regist_data"]["user"])
      render :new
      return
      #他ページに遷移したりページを閉じた場合にsessionを消去する処理の追加が必要。他ユーザー登録時に反映されるリスクあり
    end

  end

  def create
    @user = User.new(sign_up_params)
      unless @user.valid?
        render :new and return
      end
      session["devise.regist_data"] = {user: @user.attributes}
      session["devise.regist_data"][:user]["password"] = params[:user][:password]
      if session["devise.regist_data"][:user]["leader_or_member_id"]==2
        @as_leader = @user.build_as_leader
        render :new_as_leader
      else
        @as_member = @user.build_as_member
        render :new_as_member
      end
    end

    def create_as_leader
      @user = User.new(session["devise.regist_data"]["user"])
      @as_leader = AsLeader.new(as_leader_params)
        unless @as_leader.valid?
          render :new_as_leader and return
        end
        @user.build_as_leader(@as_leader.attributes)
        @user.save
        session["devise.regist_data"]["user"].clear
        sign_in(:user, @user)
      end

      def create_as_member
        @user = User.new(session["devise.regist_data"]["user"])
        @as_member = AsMember.new(as_member_params)
          unless @as_member.valid?
            render :new_as_member and return
          end
          @user.build_as_member(@as_member.attributes)
          @user.save
          session["devise.regist_data"]["user"].clear
          sign_in(:user, @user)
        end

      private
      def as_leader_params
        params.require(:as_leader).permit(:what_band, :why_band, :ideal_member, :how_long_leader, :leader_ship_id, :do_genre_id, :order_style_id, :compose_style_id, :belong_many_id)
      end
      def as_member_params
        params.require(:as_member).permit(:what_band, :why_band, :ideal_leader, :do_genre_id, :ordered_style_id, :want_belong_many_id)
      end

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
