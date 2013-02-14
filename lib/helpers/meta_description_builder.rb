module MetaDescriptionBuilder
  def create_meta_description(post)
  	if post[:type] == "comic"
  		"#{post[:title]}. #{post[:description]}. This comic is part of the #{post[:comic]} series. Created by Jason Perez."
  	elsif post[:type] == "review"
  		"#{post[:title]}. #{post[:description]}. Created by Jason Perez."
  	else
  		"We create comics that humanize various animals. Social phobias take years to cultivate. The exploration of these irrational fears is our bread and butter. Many of the characters suffer from some sort of neurosis. Created by Jason Perez."
  	end
  end
end