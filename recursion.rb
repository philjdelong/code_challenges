# require 'pry'

def combo
    menu = {
    'veggie sandwich' => 6.85,
    'extra veggies' => 2.20,
    'chicken sandwich' => 7.85,
    'extra chicken' => 3.20,
    'cheese' => 1.25,
    'chips' => 1.40,
    'nachos' => 3.45,
    'soda' => 2.05,
    }

    sorted_menu = menu.sort.reverse
    receipts = [4.85, 11.05, 13.75, 17.75, 18.25, 19.40, 28.25, 40.30, 75.00]
    receipts.map do |original_receipt|
        return possibility if original_receipt == 0.00    
        possibility = sorted_menu.map do |menu_item|
            if menu_item[1] < original_receipt
                original_receipt = (original_receipt - menu_item[1]).round(2)
                menu_item[0]
            end
        end.compact
    end
end

p combo



# Constraints:
# - you must use 100% of the receipt value, we don't want any money left over
# - you can order any quantity of any menu item
# - none of the receipt values are "tricks", they all have answers
# The Challenge:


# Find the first combination of food that adds up to the receipt total, print out only one combination for that receipt, and move on to the next receipt.
# The output format is up to you, but here are some examples:
# 4.85:
# 3 items, extra veggies, chips, cheese
# 13.75:
# 3 items, {'veggie sandwich': 1, 'nachos': 2}
