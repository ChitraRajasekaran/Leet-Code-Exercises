# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1]

nums = [2,7,11,15]
target = 9

def num_array(arr,target)
    arr.each_with_index do |val,idx1|
        ((idx1+1)..(arr.length-1)).each do |idx2|
            sum = arr[idx1] + arr[idx2]
            if sum == target
                puts "Answer [#{idx1}, #{idx2}]"
                return [idx1,idx2]
            end
        end
    end
    puts "No answer"
    nil
end

num_array(nums,target)