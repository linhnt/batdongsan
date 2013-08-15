class User::MDistrictsController < User::BaseUserController
  def index
    respond_to do |format|
      @dists = M::District.where(m_prefecture_id: params[:id])
      format.json {render json: @dists.to_json}
    end
  end
end
