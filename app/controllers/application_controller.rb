class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def app_config
    Rails.application.config
  end
end
