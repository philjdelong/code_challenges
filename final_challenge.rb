require 'pry'

# # soluion 1
# def find_target(payload, target)
# 	if payload
# 		start = payload[0]
# 		payload.shift
# 		payload.each do |x|
# 			if x + start == target
# 				return [start, x]
# 			end
# 		end
# 		find_target(payload, target)
# 	end
# end

# solution 2
def find_target(payload, target)
	return [] unless payload.count > 1
		start = payload[0]
		payload.shift
		result = payload.each do |x|
		if x == target - start
			return [start, x]
		end
	end
	find_target(payload, target)
end

payload = [1, 2, 3, 4, 5, 6]
target = 10
p find_target(payload, target)