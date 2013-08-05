module SideMenuHelper
  def side_menues
    [
      {
        group: :home,
        heading: ->{"#"}
      },
    ].compact
  end

  def side_menu_include? path_hash
    path_hash.values.map do |url_proc|
      Rails.application.routes.recognize_path(url_proc.call)[:controller]
    end.include? params[:controller]
  end

end
