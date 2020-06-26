class Pokemon
  attr_accessor :name, :type
  attr_reader :id, :db

  def initialize(id:, name:, type:, db:)

    @name = name
    @type = type
    @id = id
    @db = db

  end

  def self.save(name, type, db)

    sql = <<-SQL
    INSERT INTO pokemon (id, name, type)
    VALUES (?,?,?);
    SQL

    db.execute(sql, @id, name, type)

  end


  def self.find(id, db)

    sql = <<-SQL
      SELECT *
      FROM pokemon
      WHERE pokemon.id = ?;
    SQL
    row = db.execute(sql, id).flatten
    new_id = row[0]
    new_

  end



end
