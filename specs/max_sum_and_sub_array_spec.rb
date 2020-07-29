require 'minitest/autorun'
require_relative '../max_sum_and_sub_array.rb'

describe "Test max suma and sub array opration class" do
  describe "Check result of opration, Should return set expected sum and array of elements" do
    it "Test Case 1" do
      arr = [3, -5, 2, 0, 1, -3, 2, -4, 2]
      sum_of_sub_array_obj = MaxSumAndSubArray.new(arr)
      sum_of_sub_array_obj.get_result

      _(sum_of_sub_array_obj.resultant_sub_array.sum).must_equal 3
      _(sum_of_sub_array_obj.resultant_sub_array).must_equal [3]
    end

    it "Test Case 2" do
      arr = [-5, 2, 0, 1, -3, 22, 10, -4, 2, 1, -10]
      sum_of_sub_array_obj = MaxSumAndSubArray.new(arr)
      sum_of_sub_array_obj.get_result

      _(sum_of_sub_array_obj.resultant_sub_array.sum).must_equal 32
      _(sum_of_sub_array_obj.resultant_sub_array).must_equal [22, 10]
    end

    it "Test Case 3" do
      arr = [-1, 2, 1]
      sum_of_sub_array_obj = MaxSumAndSubArray.new(arr)
      sum_of_sub_array_obj.get_result

      _(sum_of_sub_array_obj.resultant_sub_array.sum).must_equal 3
      _(sum_of_sub_array_obj.resultant_sub_array).must_equal [2, 1]
    end

    it "Test Case 4" do
      arr = [-1, 3, -2, 1, 1, 1, 1, 1, 1, 1, 0, 1, -10]
      sum_of_sub_array_obj = MaxSumAndSubArray.new(arr)
      sum_of_sub_array_obj.get_result

      p "------------------------------"
      p sum_of_sub_array_obj.resultant_sub_array
      _(sum_of_sub_array_obj.resultant_sub_array.sum).must_equal 8
      _(sum_of_sub_array_obj.resultant_sub_array).must_equal [1, 1, 1, 1, 1, 1, 1, 0, 1]
    end
  end
end