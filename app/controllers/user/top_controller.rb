class User::TopController < User::BaseUserController
  def index
    @q = Property.search params[:q]
    if params[:q]
      if @q.result.count > 0
        @property = @q.result.first
      else
        @property = Property.first
      end
      redirect_to user_property_path(@property)
    end
  end
end
