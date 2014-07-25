class ConfirmationsController < ApplicationController
  def new
  end

  def create
    redirect_to new_vehicle_path
  end
end
