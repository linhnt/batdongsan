class User::PropertiesController < User::BaseUserController
  def show
    @property = Property.find(params[:id])
    render layout: false
  end
end
