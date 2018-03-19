class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Placeholder
  include DeviseParameterWhitelist
  include SetSource
  include CurrentUserDetection
end
