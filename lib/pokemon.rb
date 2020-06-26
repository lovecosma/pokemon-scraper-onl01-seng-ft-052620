class Pokemon
  attr_accessor :name, :type
  attr_reader :id

  def initialize(id: 1, name: "Pikachu", type: "electric")

    @name = row_from_db[0]
    @type = :name
    @id = id:

  end



end
