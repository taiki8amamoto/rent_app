class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times {@property.stations.build}
  end

  def create
    @property = Property.new(rent_params)
    if @property.save
      redirect_to properties_path, notice: "新しい物件情報を登録しました！"
    else
      flash.now[:danger] = "新しい物件情報の登録に失敗しました"
      render :new
      # redirect_to new_property_path, notice: "新しい物件情報の登録に失敗しました"
    end
  end

  def show
    @property = Property.find(params[:id])
  end

  def edit
    @property = Property.find(params[:id])
    @property.stations.build
  end

  def update
    @property = Property.find(params[:id])
    if @property.update(rent_params)
      redirect_to properties_path, notice: "物件情報を更新しました！"
    else
      flash.now[:danger] = "物件情報の更新に失敗しました"
      render :edit
    end
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy
    redirect_to properties_path, notice: "物件情報を削除しました！"
  end

  private

  def rent_params
    params.require(:property).permit(:name, :rent, :address, :age, :note, stations_attributes: [:line, :station, :minute, :_destroy, :id])
  end
end
