class Student
  attr_accessor :first_name, :last_name, :id

  def initialize(hash)
    @id = hash["id"]
    @first_name = hash["first_name"]
    @last_name = hash["last_name"]
  end

end