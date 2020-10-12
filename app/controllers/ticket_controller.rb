class TicketController < ApplicationController

  before_action :set_ticket, only: [:show, :update, :destroy]

  # GET /ticket
  def index
    @tickets = Ticket.all
    json_response(@tickets)
  end

  # POST /ticket
  def create
    puts params[:issue].inspect
    # TODO the bottom is commented out due to incorrect JSON passing.
    # TODO it should be fixed long term
    # @ticket = Ticket.create!(ticket_params)
    @ticket = Ticket.create!(create_ticket_params)
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

  # Gets all the tickets by project ID
  def ticket_by_team
    @ticket = Ticket.where(project_id: params[:project_id])
    json_response(@ticket)
  end


  private

  # Allows mass assignment for the issue field
  # TODO once the issue field is fixed, remove this method
  def create_ticket_params
    params[:issue].permit(:project_id, :status_id, :title, :description, :date_posted, :due_date, :user_id)
  end

  # Used to allow mass assignment
  def ticket_params
    params.permit(:project_id, :status_id, :title, :description, :date_posted, :due_date, :user_id)
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end
end
