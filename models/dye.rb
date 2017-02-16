require_relative("../db/sql_runner")

class Dye

attr_reader :id
attr_accessor :name

def initialize(options)
@id = options['id'].to_i
@name = options['name']
end

def save()
  sql = "INSERT INTO dyes (name) VALUES ('#{ @name }') RETURNING id;"
  dye = SqlRunner.run( sql ).first
  @id = dye['id'].to_i
end

def paints()
sql = "SELECT paints.* FROM paints
       INNER JOIN paints_dyes ON paints_dyes.paints_id = paints.id
       WHERE dye_id = #{@id}"
return Paints.get_many(sql)
end


def self.all()
  sql = "SELECT * FROM dyes"
  return self.get_many(sql)
end

def self.get_many(sql)
  dyes = SqlRunner.run(sql)
  result = dyes.map {|dye| Dye.new(dye)}
  return result
end

def self.delete_all() 
  sql = "DELETE FROM dyes"
  SqlRunner.run(sql)
end



end

