class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def render_og
    if request.headers['HTTP_USER_AGENT'].eql? 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)'
      render '/og', :layout => false
    end
  end
end
