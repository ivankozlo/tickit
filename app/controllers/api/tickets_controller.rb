class Api::TicketsController < ApplicationController
  before_action :set_ticket, only: %i[update destroy]

  def index 
    @tickets = Ticket.all 
    render json: @tickets, status: 200
  end

  def create 
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      render json: {
        response: "Ticket has been successfully created",
        ticket: @ticket
      }, status: :created
    else
      render json: {
        error: @ticket.errors
      }, status: 422
    end
  end

  private 

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(
      :id,
      :title,
      :description,
      :due_on,
      :lane_id,
      :created_at,
      :updated_at
    )
  end
end