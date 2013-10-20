module ApplicationHelper

	# Returns the full title on a per-page basis
	def full_title(page_title)
		base_title = "Sample App"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
	
	def print_copyright
		year = '2013'
		puts 'Copyright' + year
	end
end
