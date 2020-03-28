class BusinessesController < ApplicationController
  def new
    @business = Business.new
  end

  def create
    category = Category.find_by_name(params[:category_name])
    category_id = category.id
    type = category.name
    @business = current_user.businesses.build(business_params)
    @business.category_id = category_id
    @business.type = type
    if @business.save
      flash[:success] = "Business created successfully."
      redirect_to root_path
    else
      flash[:danger] = "Invalid data!"
      render "new"
    end
  end

  def index
  end

  def edit
  end

  private

  def business_params
    params.require(:business).permit(:name, :category_id, :description, :address, :contact_no, :website, specifications: {})
  end
end
