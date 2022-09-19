require './test/test_helper'

class FilmeTest < ActiveRecord::TestCase
    test "should save" do
        review = reviews(:one)
        assert review.save
    end

    test "should not save with an invalid nota" do
        review = reviews(:two)
        assert !review.save
    end
end