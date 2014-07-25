class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!

  #Double check after confirmation to make sure that the user have a Person' profile
  def check_condition?
    if user_signed_in? && current_user.person
      10.times do |n|
        puts "\tUser is ok......."
      end
      return true
    else
      10.times do |n| 
        puts "\tneed to add a Person-------------"
      end
      return false
    end
      return false
  end


end
#TODO design & create the layout with Bourbon
#TODO mailer to redesign
#TODO keep only the Models Spec
#TODO add Factory girl because of Devise
=begin
  
design the layout
add an email template
check the  flash to see if it's work
factory girl
remove my specs

=end