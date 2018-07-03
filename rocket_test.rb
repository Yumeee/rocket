require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def setup
    @rocket = Rocket.new
  end


  def test_initialize_without_arguments
    # arrange
    # act
    expected_value = false
    actual_value = @rocket.flying?
    # assert
    assert_equal(expected_value, actual_value)
    assert_equal(@rocket.name.class, String)
    assert_equal(@rocket.colour.class, String)
  end

  def test_initialize_with_arguments
    rocket = Rocket.new(name: "Yumee", colour: "Blue", flying: true)
    assert_equal(rocket.name, "Yumee")
    assert_equal(rocket.colour, "Blue")
    assert_equal(rocket.flying?, true)
  end

  def test_lift_off_no_arguments
    expected_value = true
    actual_value = @rocket.lift_off
    assert_equal(expected_value, actual_value)
  end

  def test_lift_off_with_arguments
    rocket = Rocket.new(name: "Yumee", colour: "Blue", flying: true)
    expected_value = false
    actual_value = rocket.lift_off
    assert_equal(expected_value, actual_value)
  end

  def test_land_no_arguments
    actual_value = @rocket.land
    expected_value = false
    assert_equal(actual_value, expected_value)
  end

  def test_land_arguments
    rocket = Rocket.new(name: "Yumee", colour: "Blue", flying: true)
    assert rocket.land
    # expects value to be true
  end

  def test_status_arguments
    rocket = Rocket.new(name: "Yumee", colour: "Blue", flying: true)
    expected_value = "Rocket Yumee is flying through the sky!"
    actual_value = rocket.status
    assert_equal(expected_value, actual_value)
  end
  # 
  # def test_status_no_arguments
  #   actual_value = @rocket.status
  #   expected_value = "Rocket #{name} is ready for lift off!"
  #   assert_equal(actual_value, expected_value)
  # end

end
