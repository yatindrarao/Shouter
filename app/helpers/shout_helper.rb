require 'digest/md5'

module ShoutHelper
  def gravatar user, size = 48
    digest = Digest::MD5.hexdigest(user.email)
    image_tag("https://www.gravatar.com/avatar/#{digest}?s=#{size}")
  end

  def shouterize text
    link_hashtag(strip_tags(text)).html_safe
  end

  private

  def link_hashtag text
    text.gsub(/#\w+/){|match| link_to(match, hashtag_path(match[1..-1]))}
  end
end
