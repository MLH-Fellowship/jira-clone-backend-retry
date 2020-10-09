class TicketController < ApplicationController

  before_action :set_ticket, only: [:show, :update, :destroy]

  # GET /ticket
  def index
    @tickets = Ticket.all
    json_response(@tickets)
  end

  # POST /ticket
  def create
    @ticket = Ticket.create!(ticket_params)
    json_response(@ticket, :created)
  end

  # GET /ticket/:id
  def show
    json_response(@ticket)
  end

  # PUT /ticket/:id
  def update
    @ticket.update(ticket_params)
    head :no_content
  end

  # DELETE /ticket/:id
  def destroy
    @ticket.destroy
    head :no_content
  end


  private

  # Used to allow mass assignment
  def ticket_params
    params.permit(:project_id, :status_id, :title, :description, :date_posted, :due_date)
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end
end