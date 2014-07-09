module ApplicationHelper

    def gravatar_url(user)
      gravatar_id = Digest::MD5::hexdigest(user.email).downcase
      "http://gravatar.com/avatar/#{gravatar_id}.png"
    end

    # merge the devise messages with the normal flash messages
    def devise_flash
      if controller.devise_controller? && resource.errors.any?
        flash.now[:error] = flash[:error].to_a.concat resource.errors.full_messages
        flash.now[:error].uniq!
      end
    end

end
