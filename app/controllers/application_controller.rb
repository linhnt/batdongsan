class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from Exception do |exception|
    case exception
    when ActiveRecord::RecordNotFound, ActionView::MissingTemplate
      render file: "public/404.html", status: :not_found
    else
      raise exception
    end
  end if Rails.env.production?

  def after_sign_out_path_for(resource)
    case resource
    when :admin
      new_admin_session_path
    else
      root_path
    end
  end
  
  def headers_for_downloading_csv
    response.headers["Content-Type"] = "text/csv"
    response.headers["Content-Disposition"] = "attachment;" +
      "filename=#{params[:controller]}.csv"
  end
end
