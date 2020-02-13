class CommentController < ApplicationController
include SessionsHelper
  def new
    @current_gossip = Gossip.find(params[:gossip_id])
  end

  def create
    Comment.create(content: params[:content], user_id: current_user.id, gossip_id: params[:gossip_id])
    redirect_to gossip_path(params[:gossip_id])
  end

  def index
    @all_comments = Comment.all
  end

  def edit
    @current_gossip = Gossip.find(params[:gossip_id])
    @current_comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(content: params[:content])
      redirect_to gossip_path(params[:gossip_id])
    end
  end
  
  def destroy
    @comment_to_destroy = Comment.find(params[:id])
    @comment_to_destroy.destroy
    redirect_to gossip_path(params[:gossip_id])
  end
end
