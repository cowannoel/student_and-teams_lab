require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../student')


  class TestStudent < Minitest::Test
    def setup
      @student = Student.new("Noel", "E37")
  end

  def test_student_name
    assert_equal("Noel", @student.student_name)
  end


  def test_cohort_number
    assert_equal("E37", @student.cohort_number)
  end

  def test_change_student_name
    @student.student_name = "Alan"
    assert_equal("Alan", @student.student_name)
  end


  def test_change_cohort_number
    @student.cohort_number = "E20"
    assert_equal("E20", @student.cohort_number)
  end


  def test_student_talk
    assert_equal("I can talk", @student.student_talk())
  end


def test_favourite_ruby
  assert_equal("I Love Ruby", @student.favourite_ruby("Ruby"))
end





end
