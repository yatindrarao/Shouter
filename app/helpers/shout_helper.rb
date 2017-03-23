require 'digest/md5'

module ShoutHelper
  def gravatar user, size = 48
    digest = Digest::MD5.hexdigest(user.email)
    image_tag("https://www.gravatar.com/avatar/#{digest}?s=#{size}")
  end
end
