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
      render json: {response: "Lane id #{@lane.id} has been successfully created", lane: @lane}, status: :created
    else
      render json: {error: @lane.errors}, status: 422
    end
  end

  def destroy 
    if @lane.destroy
      render json: {response: "Lane id #{params[:id]} has been successfully removed"}, status: :ok
    else
      render json: @lane.errors, status: 404
    end
  end
  private 
  def set_lane
    if Lane.exists? params[:id]
      @lane = Lane.find(params[:id])
    else
      render json: {error: "No such lane is found"}, status: 404
    end
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