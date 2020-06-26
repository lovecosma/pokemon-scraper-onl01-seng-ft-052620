class Pokemon
  attr_accessor :name, :type
  attr_reader :id

  def initialize(id: 1, name: "Pikachu", type: "electric")

    @name = row_from_db[0]
    @type = row_from_db[1]
    @id = row_from_db[2]

  end



end
