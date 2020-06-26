class Pokemon
  attr_accessor :name, :type
  attr_reader :id, :db

  def initialize(id:, name:, type:, db:)

    @name = name
    @type = type
    @id = id
    @db = db

  end

  def save(name, type, db)

    sql = <<-SQL
    INSERT INTO pokemon (name, type, db)
    VALUES (?,?,?);
    SQL

    DB[:conn].execute(sql, id, name, type, db)

  end



end
