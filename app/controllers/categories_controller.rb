class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :destroy]
  def index
    @cat = Category.all
    render json: @cat, status: :ok

  end

  def create
    @cat = Category.new(cat_params)
    if @cat.save
      render json: @cat,status: :created
    else
      render json: { errors: @cat.errors.full_messages },
                status: :unprocessable_entity
    end    

  end

  def show
    render json: @cat, status: :ok
  end

  def update
    render jso:{message: "successfully updated"} if @cat.update(cat_params)
  end

  def destory
    render jso:{message: "successfully deleted"} if @cat.destory
  end

  private

  def set_category
    @cat = Category.find(params[:id])
    rescue => e
    render json: { errors: e}
  end
  def cat_params
    params.permit(:name,:image)
  end  
end
