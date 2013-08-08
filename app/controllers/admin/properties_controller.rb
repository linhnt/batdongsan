class Admin::PropertiesController < Admin::BaseAdminController
  before_filter :load_object, only: [:show, :edit, :update, :destroy]
  before_filter :build_object, only: [:new, :create]

  def index
    @q = Property.search params[:q]
    @properties = @q.result.page params[:page]
  end

  def show
  end

  def new
    render layout: false
  end

  def edit
    render layout: false
  end

  def create
    if @property.save
      params[:lat_point].each_with_index do |point, index|
        @property.area_points.create(latitude: point, longitude: params[:lng_point][index])
      end
      redirect_to admin_property_path(@property), notice: :".created"
    else
      render action: :new
    end
  end

  def update
    if @property.update_attributes params[:property]
      redirect_to admin_property_path(@property),
        notice: :".updated"
    else
      render action: :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to admin_properties_url, notice: :".destroyed"
  end

  private
  def load_object
    @property = Property.find params[:id]
  end

  def build_object
    @property = Property.new params[:property]
  end
end
