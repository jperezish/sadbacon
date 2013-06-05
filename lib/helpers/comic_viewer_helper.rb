module ComicViewerBuilder

	# This is applied to the 'first' button in the comic viewer
	def first_comic
		if sorted_articles.index(item) == sorted_articles.length - 1
			# apply the inactive html and css
			'<h7 id="first-comic" title="This is the first comic." class="comic-viewer-inactive">&#x25C2;&#x25C2; first</h7>'
		else
			# otherwise it's legit and needs to point to the first comic
			first = sorted_articles.length - 1
			link_to('&#x25C2;&#x25C2; first', sorted_articles[first].reps[0], :id => "first-comic", :title => "View the very first comic posted.")
		end
	end

	# This is applied to the 'previous' button in the comic viewer
	def previous_comic
		if sorted_articles.index(item) == sorted_articles.length - 1
			# apply the inactive html and css
			'<h7 id="previous-comic" title="This is the first comic." class="comic-viewer-inactive">&#x25C2; previous</h7>'
		else
			previous = sorted_articles.index(item) + 1
			link_to('&#x25C2; previous', sorted_articles[previous].reps[0], :id => "previous-comic", :title => "View the previously posted comic.")
		end
	end

	# This is applied to the 'next' button in the comic viewer
  def next_comic
  	if sorted_articles.index(item) == 0
			# apply the inactive html and css
			'<h7 id="next-comic" title="This is the most recent comic." class="comic-viewer-inactive">next &#x25B8;</h7>'
		else
			nxt = sorted_articles.index(item) - 1
			link_to('next &#x25B8;', sorted_articles[nxt].reps[0], :id => "next-comic", :title => "View the next comic.")
		end
  end

	# This is applied to the 'last' button in the comic viewer
  def latest_comic
  	if sorted_articles.index(item) == 0
			# apply the inactive html and css
			'<h7 id="last-comic" title="This is the most recent comic." class="comic-viewer-inactive">last &#x25B8;&#x25B8;</h7>'
		else
			# otherwise it's legit and needs to point to the latest comic
			link_to('last &#x25B8;&#x25B8;', sorted_articles[0].reps[0], :id => "last-comic", :title => "View the latest posted comic.")
		end
  end

  # This helps determine what comic we're currently viewing
  def current_comic_number
  	comic_number = Array.new(sorted_articles.reverse)
  	comic_number.index(item) + 1
  end

  # Get the total number of comics
  def comic_count
  	sorted_articles.length
  end

end