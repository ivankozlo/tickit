class Api::LanesController < ApplicationController
  before_action :set_lane, only: %i[destroy]
  def index 
    @lanes = Lane.all
    render json: @lanes
  end

  def create 
    @lane = Lane.new(lane_parmas)
    # render json: @lane, status: :created
    if @lane.save
      render json: @lane, status: :created
    else
      render json: @lane.errors, status: :unprocessible_entity
    end
  end

  def destroy 
    @lane.destroy
  end
  private 
  def set_lane
    @lane = Lane.find(params[:id])
  end

  def lane_parmas
    params.require(:lane).permit(
      :id,
      :title,
      :created_at,
      :updated_at
    )
  end
end