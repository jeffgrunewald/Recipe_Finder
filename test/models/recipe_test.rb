require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
    test 'returns relevant results' do
        recipes = Recipe.for('apple')
        assert_not_nil recipes
        assert_equal recipes[1]['title'], 'Apple Dumplings'
    end

    test 'returns eight datapoints per recipe' do
        recipes = Recipe.for('bacon')
        assert_equal recipes[1].length, 8
        assert_equal recipes[1].length, recipes[5].length
    end
end
