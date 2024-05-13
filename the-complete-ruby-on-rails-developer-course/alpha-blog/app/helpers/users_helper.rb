module UsersHelper
  # This method will return the Gravatar for the given user.
  # it will be used in the users/show.html.erb file.
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: 'rounded mx-auto d-block')
  end
end
