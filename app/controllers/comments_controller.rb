class CommentsController < ApplicationController
  before_filter :create_brain_buster, :only => [:show]
  before_filter :validate_brain_buster, :only => [:create, :update]
  
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.create!(params[:comment])
    flash[:notice] = "Thanks for commenting!"
    respond_to do |format|
      format.html {redirect_to @blog}
      format.js
    end
  end
  
  def show
    @comment = Comment.find(params[:id])
  end
  
  def render_or_redirect_for_captcha_failure
    @blog = Blog.find(params[:blog_id])
    flash[:notice] = "Try again."
    respond_to do |format|
      format.html {redirect_to @blog}
      format.js
    end
  end
end
