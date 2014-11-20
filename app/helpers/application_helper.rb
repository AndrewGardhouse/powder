require 'digest/md5'

module ApplicationHelper
  def gravatar(email)
    email_address = email.downcase
    hash = Digest::MD5.hexdigest(email_address)

    default_image = "http://www.thephotoargus.com/wp-content/uploads/2013/01/mm21.jpg"

    image_src = "http://www.gravatar.com/avatar/#{hash}s=200&d=#{default_image}"

    return image_src
  end
end
