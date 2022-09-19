require './test/test_helper'

class FilmeTest < ActiveRecord::TestCase
    test "should save" do
        filme = filmes(:one)
        assert filme.save
    end

    test "should not save with an invalid year" do
        filme = filmes(:two)
        assert !filme.save
    end
end