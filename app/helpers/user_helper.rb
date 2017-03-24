module UserHelper
  def follow_button_user user
    if current_user.following? user
        button_to 'Unfollow', user_follow_path(user), method: :delete
    else
      button_to 'Follow', user_follow_path(user)
    end
  end
end
