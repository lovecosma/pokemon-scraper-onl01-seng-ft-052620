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
    INSERT INTO pokemon (id, name, type)
    VALUES (?,?,?);
    SQL

    @db.execute(sql, self.name, self.type, db)

  end



end
