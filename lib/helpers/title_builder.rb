module TitleBuilder
  def create_title(post)
  	if post[:type] == "comic"
  		"#{post[:title]} - #{post[:comic]} | Sad Bacon"
  	elsif post[:type] == "review"
  		"#{post[:title]} | Sad Bacon"
  	elsif post[:type] == "four-oh-four"
  		"#{post[:title]} | Sad Bacon"
  	else
  		"Sad Bacon - comics by Jason Perez"
  	end
  end
end