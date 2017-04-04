class TextShoutsController < ApplicationController
  include Shouts
  def create
    text_shout = TextShout.new(text_shout_params)
    save_shout text_shout
  end

  private

  def text_shout_params
    params.require(:text_shout).permit(:body)
  end

end
