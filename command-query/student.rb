class Student

  def initialize
    @grade = ''
    @gpa = 2
  end

  def grade
    calc_gpa
    @grade
  end

  def calc_gpa
    case
      when @gpa == 0 then @grade = 'F'
      when @gpa == 1 then @grade = 'D'
      when @gpa == 2 then @grade = 'C'
      when @gpa == 3 then @grade = 'B'
      when @gpa == 4 then @grade = 'A'
    end
  end

  def study
    @gpa != 4 ? @gpa += 1 : @gpa
  end

  def slack_off
    @gpa != 0 ? @gpa -= 1 : @gpa
  end
end

