def largest_product_in_a_series(num)
  num_array = num.to_s.split("")
  potential_highest_products = []

  num_array.each_with_index do |number, index|
    potential_highest_products << num_array[index..index + 3] if number == "9" 
  end

  biggest_num = potential_highest_products.collect { |number| number.join.to_i }.max
  biggest_num.to_s.split("").map(&:to_i).reduce(:*)
end