module UserHelper
  def follow_button_user user
    button_to 'Follow', user_follow_path(user)
  end
end
