ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  fixtures :all
end

class ActionController::TestCase
  def sign_in_as(user)
    session[:user_id] = user.id
  end
end

class ActionDispatch::IntegrationTest
  def sign_in_as(user)
    post login_path, { session: { email: user.email, password: "password" } }
  end
end


