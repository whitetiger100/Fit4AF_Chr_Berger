class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def require_signin
    unless current_user
      session[:intended_url] = request.url
      redirect_to new_session_url, alert: "Erst einloggen, dann wohlfühlen."
    end
  end

  def require_admin
    unless current_user_admin?
      redirect_to root_url, alert: "Du kein Admin, du in die Hölle kommen!"
    end
  end

  def current_user_admin?
    current_user && current_user.admin?
  end
  helper_method :current_user_admin?

   def current_user_physio?
    current_user && current_user.physio?
  end
  helper_method :current_user_physio?

    def require_correct_user
      # Hiermit wird sichergestellt, dass kein Nutzer Daten anderer bearbeiten darf
      	if current_user_admin?
      	else
      		@user = User.find(params[:id])
      		unless current_user == @user
        		redirect_to root_url, alert: "Finger weg von anderen Konten!"
     		end
    	end
    end

end
