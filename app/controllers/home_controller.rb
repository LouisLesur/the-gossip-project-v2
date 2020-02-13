class HomeController < ApplicationController
include SessionsHelper
include HomeHelper
  def dashboard
  end

  def index
  end

  def generateur
    @all_gossip = Gossip.all
  end
end
