class MaxSumAndSubArray
  attr_accessor :original_array, :sub_array, :resultant_sub_array, :sum
  
  def initialize(arr = [])
    @original_array      = arr
    @sub_array           = []
    @sum                 = 0
    @resultant_sub_array = []
  end

  def get_result
    original_array.each do |element|
      temp_sum = sum + element
      if temp_sum > @sum || element.zero?
        mutate_sub_array(temp_sum, element)
      else
        mutate_resultant_sub_array
      end
    end

    mutate_resultant_sub_array    
    print_result
  end

  private

  def mutate_sub_array(temp_sum, element)
    @sum = temp_sum
    @sub_array.push(element)
  end

  def mutate_resultant_sub_array
    if @sub_array.sum > @resultant_sub_array.sum
      @resultant_sub_array.clear
      @resultant_sub_array = @sub_array.clone
    end
    reset_sub_array_and_sum
  end

  def reset_sub_array_and_sum
    sub_array.clear
    sum = 0
  end

  def print_result
    puts "*******************************************************************"
    puts "Original Array = #{@original_array}"
    puts "Possible contiguous subarray with max sum = #{@resultant_sub_array}"
    puts "Maximum sum of resultant subarray = #{@resultant_sub_array.sum}"
  end
end