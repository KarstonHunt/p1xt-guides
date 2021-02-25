require "employee"

class Startup
  attr_reader :name, :funding, :salaries, :employees

  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    @salaries.key?(title)
  end

  def >(other)
    self.funding > other.funding
  end

  def hire(employee_name, employee_title)
    if self.valid_title?(employee_title)
      new_employee = Employee.new(employee_name, employee_title)
      @employees << new_employee
    else
      raise "Employee title is not valid"
    end
  end

  def size
    return @employees.length
  end

  def pay_employee(employee)
    if self.funding > @salaries[employee.title]
      employee.pay(@salaries[employee.title])
      @funding -= @salaries[employee.title]
    else
      raise "Not enough funding to pay this salary"
    end
  end

  def payday
    @employees.each { |employee| self.pay_employee(employee) }
  end

  def average_salary
    salaries_total = @employees.inject(0) do |total, employee|
      salary = @salaries[employee.title]
      total + salary
    end
    salaries_total / @employees.length.to_f
  end

  def close
    @employees = []
    @funding = 0
  end

  def acquire(other_startup)
    @funding += other_startup.funding
    @salaries = other_startup.salaries.merge(@salaries)
    @employees = @employees += other_startup.employees
    other_startup.close
  end
end
