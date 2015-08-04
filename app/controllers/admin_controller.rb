class AdminController < ApplicationController

  # load_and_authorize_resource - not a soultion to solve the authorizention issue.
  #before_action :authenticate_user!
  def index
    unless current_user.has_role? :admin
      redirect_to root_path, :alert => "Access denied."
    end
  end
end
