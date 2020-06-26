class Pokemon
  attr_accessor :name, :type
  attr_reader :id, :db

  def initialize(id:, name:, type:, db:)

    @name = name
    @type = type
    @id = id
    @db = db

  end

  def save

    sql = <<-SQL
    INSERT INTO pokemon (name, value, type)
    VALUES (?,?,?)
    SQL
    DB[conn:].execute(sql, self.name, slef.value, self.type)
  end



end
