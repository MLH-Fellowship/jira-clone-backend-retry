class CommentsController < ApplicationController

  before_action :set_comment, only: [:show, :update, :destroy]

  # GET /comments
  def index
    @comments = Comment.all
    json_response(@comments)
  end

  # POST /comments
  def create
    @comment = Comment.create!(comment_params)
    json_response(@comment, :created)
  end

  # GET /comments/:id
  def show
    json_response(@comment)
  end

  # PUT /comments/:id
  def update
    @comment.update(comment_params)
    head :no_content
  end

  # DELETE /comments/:id
  def destroy
    @comment.destroy
    head :no_content
  end

  def comments_by_ticket_id
    @comment = Comment.where(ticket_id: params[:ticket_id])
    json_response(@comment)
  end


  private

  # Used to allow mass assignment
  def comment_params
    params.permit(:content, :user_id, :project_id, :ticket_id)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end
