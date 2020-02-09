class UserCommentsController < ApplicationController
  def create
    user_comment = UserComment.create(user_comment_params)
    redirect_to information_path(user_comment.information.id)
  end

  private
  def user_comment_params
    params.require(:user_comment).permit(:text).merge(user_id: current_user.id, information_id: params[:information_id])
  end
end
