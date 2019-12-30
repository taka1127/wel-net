class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "information_path#{comment.information.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(office_id: current_office.id, information_id: params[:information_id])
  end
end

