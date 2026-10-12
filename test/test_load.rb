require 'test_helper'

class ChessTest < Minitest::Test
  def test_requiring_chess_leaves_the_build_toolkit_unloaded
    refute($LOADED_FEATURES.any? { |feature| feature.end_with?('/mkmf.rb') }, 'requiring chess loaded mkmf')
  end
end
