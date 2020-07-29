require_relative './max_sum_and_sub_array.rb'

class PerformArrayOperation  
  def perform
    get_input
  
    sum_of_sub_array_obj = MaxSumAndSubArray.new(@arr)
    sum_of_sub_array_obj.get_result
  end

  def get_input
    length = 0
    @arr   = []

    puts "Enter no of elements you want to enter :"
    length = gets.chomp.to_i
  
    puts "Enter elements :"
    length.times{ |count| @arr << gets.chomp.to_i }
  end
end

array_op_obj = PerformArrayOperation.new
array_op_obj.perform
