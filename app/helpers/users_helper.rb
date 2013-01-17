module UsersHelper
  def gravatar_for(user, param_opts={})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    options = {alt: user.name, class: "gravatar"}
    if param_opts.has_key?(:size)
        options[:size] = "#{param_opts[:size]}x#{param_opts[:size]}"
    end

    image_tag(gravatar_url, options)
  end
end
