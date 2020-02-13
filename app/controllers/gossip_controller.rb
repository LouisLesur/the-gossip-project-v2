class GossipController < ApplicationController
include SessionsHelper
include GossipHelper

  def show
    @all_comments = Comment.all
    @current_gossip = Gossip.find(params[:id])
  end

  def new
  end

  def index
    @all_gossip = Gossip.all
  end

  def create
    @gossip = Gossip.create(title: params[:title],content: params[:content],user_id: current_user.id)
    redirect_to gossip_path(@gossip.id)
  end

  def edit
    @current_gossip = Gossip.find(params[:id])
  end

  def update
    @gossip_to_edit = Gossip.find(params[:id])
    if @gossip_to_edit.update(title: params[:title],content: params[:content])
      redirect_to gossip_path
    end
  end

  def destroy
    @gossip_to_destroy = Gossip.find(params[:id])
    @gossip_to_destroy.destroy
    redirect_to dashboard_path
  end
end
