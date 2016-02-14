require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
    test "returns relevant results" do
        recipes = Recipe.for('apple')
        assert_not_nil recipes
        assert_equal recipes[1]['title'], 'Apple Dumplings'
    end
end
