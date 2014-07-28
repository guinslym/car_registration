class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #before_filter :authenticate_user!, except:[:home]

  #Double check after confirmation to make sure that the user have a Person' profile

  def check_person
    if (User.find(current_user.id).person)
      return true
    else
      redirect_to new_person_path and return
    end
  end


end

=begin 


=end
#TODO requirements to fill_out
#FILTER ----can have a maximum of 2 vehicles
#TODO keep only the Models Spec
#TODO add Factory girl because of Devise---this is Extra
=end