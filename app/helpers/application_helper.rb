require 'digest/md5'

module ApplicationHelper
  # Here I get email and size (if nil, defaults to 150)
  def gravatar(email, size = 150)
    email_address = email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    # If gravatar does not exists, it laods a kitty image, so use the size here as well! :)
    default = "http%3A%2F%2Florempixel.com%2F#{size}%2F#{size}%2Fcats%2F"
    # This string gets the gravatar image, I am using the size here
    image = "http://www.gravatar.com/avatar/#{hash}?s=#{size}&d=#{default}"

    return image
  end

  def is_active(path)
    # "active" if current_page?(path)
    start = Regexp.new(path)
    "active" if start.match(request.url)
  end
end
