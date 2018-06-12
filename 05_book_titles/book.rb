class Book
	# write your code here
	attr_reader :title

	public

	def title=(new_title)
		@title = titleize new_title
	end

	private
	
	def titleize words
		little_words = ['and', 'the', 'over', 'a', 'an', 'but', 'or', 'in', 'of']
		words = words.split(' ')
		([words[0].capitalize] + words[1..-1].map { |word|
			word = !(little_words.include? word) ? word.capitalize : word
		}).join(' ')
	end

end
