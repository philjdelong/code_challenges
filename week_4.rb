# You have one hour to complete the following algorithm.
# Limit your online searches to core language documentation only.
# ---
# The number 47 has an interesting characteristic.
# If you take the number, plus its reverse (47 => 74) and then add them together to a number (47+74=121) the resulting sum is a palindrome.
# Starting at 0, find the first 25 numbers that have this same characteristic as 47, but limit it to where the palindrome is greater than 1000.
# Collect the results in an array. Be sure that you're collecting the interesting numbers like 47, not the palindromic sums.
# Extension: see if you can do this without converting numbers to strings/arrays.
require 'pry'
binding.pry
def reverse(num)
	num.to_s.reverse.to_i
end

@palindromes = []

def find_palindromes(num)
	until @palindromes.count == 25
		total = num + reverse(num)
		split_total = total.to_s
		if split_total.length < 2 && total > 1000
			palindromes << num
			find_palindromes(num + 1)
		elsif split_total[0] == split_total[-1]
			split_total = split_total.slice(0, -1)
		else
			num = num + 1
			find_palindromes(num)
		end
	end
	return @palindromes
end

find_palindromes(100)