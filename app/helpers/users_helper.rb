module UsersHelper
  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 150 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def add_skill_link name
    link_to_function name , nil, id: "more skills" do |page|
      page.insert_html :bottom, :skills, partial: 'skill_item' , object: UserSkill.new
    end
  end

end
