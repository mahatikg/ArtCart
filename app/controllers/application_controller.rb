class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :created_style_selection?, :create_reproartist_data

  # before_action :conditionally_finish_signup!
  #changed before_filter to before_action

  def conditionally_finish_signup!
      if reproartist_signed_in? &&
        current_reproartist.style.blank?
        #  params[:controller] != "sessions" &&
        #  params[:action] != "destroy"
        redirect_to edit_reproartist_path(current_reproartist)
      end
  end

    def created_style_selection?
      @reproartist = current_reproartist
        if @reproartist.style.blank?
          false
        else
          true
        end
    end

    def create_reproartist_data
      redirect_to  edit_reproartist_path(current_reproartist)
    end
end
