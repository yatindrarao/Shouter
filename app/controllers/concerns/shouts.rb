module Shouts
  extend ActiveSupport::Concern
  def save_shout
    shout = current_user.shouts.build(content: shout)
    if shout.save
      redirect_to dashboard_path
    else
      flash.alert = "Could not shout"
      redirect_to dashboard_path
    end
  end
end
