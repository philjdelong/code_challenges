# require 'pry'

class StringValidator
  def validate(string)
    array = string.split('')
    while array
      if array[-2] == '(' && array[-1] == ")" || array[-2] == '[' && array[-1] == "]" || array[-2] == '{' && array[-1] == "}"
        array.pop
        array.pop
      elsif array[0] == '(' && array[-1] == ")" || array[0] == '[' && array[-1] == "]" || array[0] == '{' && array[-1] == "}" 
        array.pop
        array.shift
      elsif array == []
        return true
      else
        return false
      end
    end
  end
end


v = StringValidator.new
p v.validate("()")
# => true
p v.validate("([{}[]])")
# => true
p v.validate("()[")
# => false
p v.validate("([)]")
# => false


# const reverse = originalString => {
#   // base case
#   if(originalString.length === 0) {
#     return '';
#   };
# ​
#   let lastLetter = originalString.slice(-1);
#   // recursive case
#   return lastLetter + reverse(originalString.slice(0, -1))
# };
# ​
# console.log(reverse('Ariel'));
# console.log(reverse('Daniel Frampton'));
