require 'digest/md5'

module ApplicationHelper
  def gravatar(email)
    email_address = email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    default = "http%3A%2F%2Frs242.pbsrc.com%2Falbums%2Fff147%2Fgripofabear1%2Ffunnycat.jpg~c200"
    image = "http://www.gravatar.com/avatar/#{hash}?s=150&d=#{default}"
    return image
  end
end
