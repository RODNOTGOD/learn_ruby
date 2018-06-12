#write your code here
def translate words
	vowels = 'aeio'.split('')
	words = words.split(' ')
	words.map { |word|
		word = word.split ''
		word.each_with_index { |letter, index|
			if vowels.include? letter
				word.shift index
				break word.join('') + 'ay'
			else
				word << letter
			end
		}
	}.join(' ')
end
