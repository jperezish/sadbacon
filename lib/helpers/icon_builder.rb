module IconLinkBuilder

  def create_icon_link(post)
  	slug = post[:title].downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  	"/images/#{slug}-icon.png"
  end

end