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


def bubble_sort_by(unsorted_words, &block)

    is_sorted = false

    while(is_sorted == false)

        is_sorted = true

        unsorted_words.each_with_index do |word, index|

            if((index < (unsorted_words.length - 1)))
                value = yield(word, unsorted_words[(index + 1)])

				   if(value > 0)
                    unsorted_words[index] = unsorted_words[(index + 1)]
                    unsorted_words[(index + 1)] = word
                    is_sorted = false

                end

            end
        end

    end

    return unsorted_words

end

bubble_sort_by(["cat", "gerbil", "crab"]) do |left, right|
left.length - right.length
end
