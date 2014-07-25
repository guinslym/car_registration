class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!
end
#TODO force the user to fill the form upon confirmation
#TODO create the layout
#TODO keep only the Models Spec
#TODO add animate.css
