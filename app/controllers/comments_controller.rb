class CommentsController < ApplicationController
  
  before_filter :require_user, :only => :index

  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.new(params[:comment])
    if verify_recaptcha(@comment) && @comment.save
      Mail.deliver_comment_notification(@comment)
      flash[:notice] = "Thanks for commenting, you."
        respond_to do |format|
        format.html {redirect_to(blog_url(:id => @comment.blog, :anchor => dom_id(@comment)))}
        format.js
        end
    else
      flash[:notice] = "Captcha failed. It's a bloody bother, but what can you do? Please try again."
      redirect_to @blog
    end
    
  end
  
 def index
   @comments = Comment.find(:all)
 end
 
  def destroy
    
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment has been removed."
     respond_to do |format|
      format.html { redirect_to(comments_url) }
      format.xml  { head :ok }
    end
  end
  
end
