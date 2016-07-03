class ListsController < ApplicationController
  def index
  	@lists = List.all
  	render json: @lists
  end

  def new
    @list = List.new
  end

  # def create
  #   @category = Category.new(list_params)
  #   if @category.save
  #     flash[:success] = t(:saved_successfuly)
  #     redirect_to edit_category_path @category
  #   else
  #     render 'new'
  #   end  
  # end

  def create
    @list = List.new(list_params)
    if @list.save
      @lists = List.all
    else
      #TODO: add errors
      @lists = List.all
    end
    render json: @lists
  end

  def update
  end

  def delete
  end

  def list_params
    params.require(:list).permit(:name, :order)
  end 
end
