require_relative './list'

def hashify(word)
	hash = {}
	('a'..'z').each do |letter|
		hash[letter] = 0
	end


end

def diff_by_one(word1, item2)
	if hashify(word1) == hashify(word2)
		return true
	else
		return false
	end
end

def list_words(word)
	all_next_words = []
	FOUR_LETTER_WORDS.each do |item|
		if diff_by_one(word, item)
			all_next_words << item 
		end
	end
	return all_next_words
end

puts list_words("aahs")