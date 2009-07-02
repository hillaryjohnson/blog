# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  before_filter :get_pages_for_tabs
  def get_pages_for_tabs
    if current_user
      @tabs = Page.find(:all)
    else
      @tabs = Page.find(:all, :conditions => ["admin != ?", true])
    end
  end

  helper_method :current_user_session, :current_user, :require_user
  
  private 
  
  def current_user_session
    return@current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
  
  def require_user
    unless current_user
      flash[:notice] = "You must be logged in to access this page"
      redirect_to :controller => :user_sessions, :action => 'new'
      return false
    end
  end

      

end
