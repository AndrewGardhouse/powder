require 'digest/md5'

module ApplicationHelper
  def gravatar(email)
    email_address = email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    default = "http%3A%2F%2Florempixel.com%2F200%2F200%2Fcats%2F"
    image = "http://www.gravatar.com/avatar/#{hash}?s=150&d=#{default}"
    return image
  end
end
