module MetaDescriptionBuilder
  def create_meta_description(post)
  	if post[:type] == "comic"
  		"#{post[:title]}. #{post[:description]}. This comic is part of #{post[:comic]}. Created by Jason Perez."
  	elsif post[:type] == "review"
  		"#{post[:title]}. #{post[:description]}. Created by Jason Perez."
  	else
  		"I create comics that humanize various animals. Social phobias take years to cultivate. The exploration of these irrational fears is a hobby of mine. Created by Jason Perez."
  	end
  end
end