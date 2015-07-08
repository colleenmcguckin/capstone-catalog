class Capstone

  attr_accessor :id, :first_name, :last_name, :name, :description, :url, :screenshot, :student_id

  def initialize(hash)
    @id = hash["id"]
    @first_name = hash["first_name"]
    @last_name = hash["last_name"]  
    @name = hash["capstones"]["name"]
    @description = hash["capstones"]["description"]
    @url = hash["capstones"]["url"]
    @screenshot = hash["capstones"]["screenshot"]
    @student_id = hash["capstones"]["student_id"]
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