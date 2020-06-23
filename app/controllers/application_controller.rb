class ApplicationController < ActionController::Base

  before_action :basic_auth, if: :production?
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :get_category
  before_action :set_search
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end
  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials[:basic_auth][:user] &&
      password == Rails.application.credentials[:basic_auth][:pass]
    end 
  end

  def get_category
    @parents = Category.all.order("id ASC").limit(3)
  end

  def set_search
    @q = Item.ransack(params[:q])
    @search = @q.result.includes(:images).order(updated_at: "DESC")
  end

  def production?
    Rails.env.production?
  end

end