class PhotoShoutsController < ApplicationController
  include Shouts
  def create
    photo_shout = PhotoShout.new(photo_shout_params)
    save_shout photo_shout
  end

  private

  def photo_shout_params
    params.require(:photo_shout).permit(:image)
  end
end
