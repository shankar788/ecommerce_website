class ProductsController < ApplicationController
  # before_action :authorize
  before_action :set_pro, only: [:show, :destroy,:update]
  def index
    @pro = Product.all
    render json: @pro, status: :ok

  end

  def create
    @pro = Product.new(pro_params)
    if @cat.save
      render json: @cat,status: :created
    else
      render json: { errors: @cat.errors.full_messages },
                status: :unprocessable_entity
    end    

  end

  def show
    render json: @pro, status: :ok
  end

  def update
    render jso:{message: "successfully updated"} if @pro.update(cat_params)
  end

  def destory
    render jso:{message: "successfully deleted"} if @pro.destory
  end

  private

  def set_pro
    @pro = Product.find(params[:id])
    rescue => e
    render json: { errors: e}
  end
  def pro_params
    params.permit(:name,:price,:description,:manufacture,:feture,:category_id)
  end 
end

