class FeaturesController < ApplicationController

  before_action :set_feature, only: [:show, :edit, :update, :destroy]


  # GET /features
  def index
    @features = Feature.all
  end

  # GET /features/new
  def new
    @feature = Feature.new
  end

  # GET /features/1
  def show
  end

  # GET /features/1/edit
  def edit
  end

  # POST /features
  def create
    @feature = Feature.new(feature_params)

    respond_to do |format|
      if @feature.save
        format.html { redirect_to @feature, notice: 'Feature was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /features/1
  def update
    respond_to do |format|
      if @feature.update(feature_params)
        format.html { redirect_to @feature, notice: 'Feature was successfully created.' }
      else
        format.html { render :edit }
      end
    end
  end


  # DELETE /features/1
  def destroy
    @feature.destroy
    respond_to do |format|
      format.html { redirect_to features_path, notice: 'Feature was successfully deleted.' }
    end
  end


  private


    # Use callbacks to share common setup or constraints between actions.
    def set_feature
      @feature = Feature.find(params[:id])
    end

    # White list allowed attributes
    def feature_params
      params.require(:feature).permit(:name, :puppet_include)
    end
end
