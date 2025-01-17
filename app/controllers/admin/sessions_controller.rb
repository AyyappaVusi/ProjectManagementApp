# frozen_string_literal: true

class Admin::SessionsController < Devise::SessionsController

  before_action :check_user_sign_in, only: [:new]

  private

  def check_user_sign_in
    if user_signed_in?
      flash[:alert] = "User is already signed in. Admin cannot sign in. Kindly sign out as user"
      redirect_to root_path
    end
  end

  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
