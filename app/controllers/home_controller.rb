class HomeController < ApplicationController
  # before_action :authenticate_user!

  def index
    @pubs = Pub.all
  end
end
