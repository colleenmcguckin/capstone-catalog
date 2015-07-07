class Capstone

  attr_accessor :id, :name, :url, :description

  def initialize(hash)
    @id = hash["id"]
    @name = hash["name"]
    @url = hash["url"]
    @description = hash["description"]
    # @image = hash["screenshot"]
  end

end