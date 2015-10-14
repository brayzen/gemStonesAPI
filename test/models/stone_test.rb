require "test_helper"

class StoneTest < ActiveSupport::TestCase
  def stone
    @stone ||= Stone.new
  end

  def test_valid
    assert stone.valid?
  end
end
