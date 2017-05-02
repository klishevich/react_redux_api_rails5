class ListsController < ApplicationController
  def index
    @lists = List.all
    render json: @lists
  end

  def create
    @list = List.new(list_params)
    if @list.save!
      render status: 201, json: @list
    else
      render status: 500, json: @list
    end
  end

  def show
    @list = find_list
    render json: @list
  end

  def update
    @list = find_list
    @list.update(list_params)
    render status: 200, json: @list
  end

  def destroy
    @list = find_list
    @list.destroy!
    head :no_content
  end

  def list_params
    params.require(:list).permit(:name,
                                 :order,
                                 :first_name,
                                 :last_name,
                                 :birth_date,
                                 :is_alive)
  end

  private

  def find_list
    List.find(params[:id])
  end
end
