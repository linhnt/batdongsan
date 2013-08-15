class User::MPrefecturesController < User::BaseUserController
  def index
    respond_to do |format|
      @prefs = M::Prefecture.where(m_city_id: params[:id])
      format.json {render json: @prefs.to_json}
    end
  end
end
