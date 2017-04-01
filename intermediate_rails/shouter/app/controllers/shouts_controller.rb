class ShoutsController < ApplicationController

  def create
    shout = current_user.shouts.build(shout_parameters)
    shout.save
    if shout.save
      redirect_to dashboard_path
    else
      flash.alert = "Please type a shout."
      redirect_to dashboard_path
    end
  end

  def show
    @shout = Shout.find(params[:id])
  end

  private


  def shout_parameters
    params.require(:shout).permit(:body)
  end

end
