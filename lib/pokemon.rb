class Pokemon
  attr_accessor :name, :type
  attr_reader :id

  def initialize(row_from_db)

    @name = row_from_db[0]
    @type = type
    @id = id

  end



end
