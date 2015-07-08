class Capstone

  attr_accessor :id, :first_name, :last_name, :name, :description, :url, :screenshot, :student_id

  def initialize(hash)
    @id = hash["id"]
    @first_name = hash["first_name"]
    @last_name = hash["last_name"]  
    @name = hash["capstone"]["name"]
    @description = hash["capstone"]["description"]
    @url = hash["capstone"]["url"]
    @screenshot = hash["capstone"]["screenshot"]
    @student_id = hash["capstone"]["student_id"]
  end

  def self.find(id)
    capstone_hash = Unirest.get("http://localhost:3000/students/#{id}.json").body
    Capstone.new(capstone_hash)
  end

  def self.all
    capstones = []
    capstone_hashes = Unirest.get("http://localhost:3000/students.json").body
    capstone_hashes.each do |hash|
      capstones << Capstone.new(hash)
    end
    capstones
  end

end