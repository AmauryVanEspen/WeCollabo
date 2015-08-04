class HomeController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    #@events = Event.where('starts > ?', DateTime.now).order(starts: :asc).limit(3)
    @events = Event.future_events.chron_order.limit(3)
    @user = current_use
  end
end
