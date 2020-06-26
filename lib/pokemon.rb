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

    DB[:conn].execute(sql, @id, name, type)

  end



end
