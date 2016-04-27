def bubble_sort(unsorted_numbers)

	is_sorted = false
        while(is_sorted == false )
        	is_sorted = true
        unsorted_numbers.each_with_index do | num, index |



                if((index < (unsorted_numbers.length - 1)) && (num > unsorted_numbers[(index + 1)]))

                    unsorted_numbers[index] = unsorted_numbers[(index + 1)]
                    unsorted_numbers[(index + 1)] = num
                    is_sorted = false

                end

        end

        end
	return unsorted_numbers

end

bubble_sort([9,5,2,6,7,3])