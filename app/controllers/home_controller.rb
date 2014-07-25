class HomeController < ApplicationController

  def index
  if check_condition?

    @hello = "Correct"
  else
    @hello = "Not good"

  end
end


end
