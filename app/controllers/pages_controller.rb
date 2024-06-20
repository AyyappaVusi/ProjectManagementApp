class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:users], unless: :admin_signed_in?
    before_action :authenticate_admin!, only: [:admin], unless: :user_signed_in?
  def home
  end

  def users
  end

  def admin
  end
end
