class SingersController < ApplicationController
  def index
    @singers = List.all
    render json: @singers
  end

  def create
    @singer = Singer.new(singer_params)
    if @singer.save!
      render status: 201, json: @singer
    else
      render status: 500, json: @singer
    end
  end

  def show
    @singer = find_singer
    render json: @singer
  end

  def update
    @singer = find_singer
    @singer.update(singer_params)
    render status: 200, json: @singer
  end

  def destroy
    @singer = find_singer
    @singer.destroy!
    head :no_content
  end

  def singer_params
    params.require(:singer).permit(:order,
                                   :first_name,
                                   :last_name,
                                   :birth_date,
                                   :is_alive)
  end

  private

  def find_singer
    Singer.find(params[:id])
  end
end
