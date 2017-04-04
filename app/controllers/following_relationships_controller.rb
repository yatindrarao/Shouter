class FollowingRelationshipsController < ApplicationController
  def create
    current_user.follow user
    redirect_to user, notice: 'Now following user'
  end

  def destroy
    current_user.unfollow user
    redirect_to user, notice: 'No longer following a user'
  end

  private

  def user
    # should not use the @_user anywhere else particulary for storing the user
    @_user ||= User.find(params[:user_id])
  end
end
