###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # Convert to integer or skip if not a valid integer
    begin
      i_arg = Integer(arg)
    rescue ArgumentError
      next
    end
    
    # insert result at the right position
    is_inserted = false
    result.each_with_index do |val, i|
      if i_arg < val
        else
          result.insert(i, i_arg)
          is_inserted = true
          break
      end
    end
    result << i_arg unless is_inserted
end

puts result
