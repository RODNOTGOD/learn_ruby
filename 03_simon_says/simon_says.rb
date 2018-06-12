#write your code here
def echo screams
	screams
end

def shout screams
	screams.upcase
end

def repeat words, times = 2
	([words] * times).join(' ')
end

def start_of_word word, range
	word[0..range-1]
end

def first_word words
	words.split(' ')[0]
end

def titleize words
	index = 0
	little_words = ['and', 'the', 'over']
	words = words.split(' ')
	words.map { |word|
		if !(little_words.include? word and index != 0)
			index += 1
			word.capitalize
		else
			word
		end
	}.join(' ')
end
