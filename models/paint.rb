require_relative("../db/sql_runner")

class Paint

attr_reader :id
attr_accessor :name

def initialize(options)
@id = options['id'].to_i
@name = options['name']
end

def save()
  sql = "INSERT INTO paints (name) VALUES ('#{ @name }') RETURNING id;"
  paint = SqlRunner.run( sql ).first
  @id = paint['id'].to_i
end

def dyes()
sql = "SELECT dyes.* FROM dyes
       INNER JOIN paints_dyes ON paints_dyes.dye_id = dyes.id
       WHERE paint_id = #{@id}"
return Dye.get_many(sql)
end

def self.all()
  sql = "SELECT * FROM paints"
  return self.get_many(sql)
end

def self.get_many(sql)
  paints = SqlRunner.run(sql)
  result = paints.map {|paint| Paint.new(paint)}
  return result
end

def self.delete_all() 
  sql = "DELETE FROM paints"
  SqlRunner.run(sql)
end



end

