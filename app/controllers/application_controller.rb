class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Placeholder
  include DeviseParameterWhitelist

  before_action :set_source

  def set_source
    session[:source] = params[:q] if params[:q].present?
  end
end
