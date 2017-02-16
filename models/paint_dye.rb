require_relative("../db/sql_runner")

class PaintDye

attr_reader :id
attr_accessor :name

def initialize(options)
@id = options['id'].to_i
@paint_id = options['paint_id'].to_i
@dye_id = options['dye_id'].to_i
@percentage = options['percentage'].to_i
end

def save()
  sql = "INSERT INTO paints_dyes (paint_id, dye_id, percentage) VALUES (#{@paint_id}, #{@dye_id}, #{@percentage}) RETURNING id;"
  paint_dye = SqlRunner.run( sql ).first
  @id = paint_dye['id'].to_i
end

def self.all()
  sql = "SELECT * FROM paints_dyes"
  return self.get_many(sql)
end

def self.get_many(sql)
  paints_dyes = SqlRunner.run(sql)
  result = paints_dyes.map {|paint_dye| PaintDye.new(paint_dye)}
  return result
end

def self.delete_all() 
  sql = "DELETE FROM paints_dyes"
  SqlRunner.run(sql)
end



end

