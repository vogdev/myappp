module UsersHelper
   def avatar_for(user, options = { size: 80 })
   	size = options[:size]
        if user.avatar?
            image_tag user.avatar.url(:thumb), width: size, class: "img-circle" 
        else
            image_tag "default_avatar.png", width: size, class: "img-circle" 
        end
    end
end
