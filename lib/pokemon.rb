class Pokemon
<<<<<<< HEAD
  attr_accessor :name, :type, :db, :id, :hp
  def initialize(id = nil, name = nil, type = nil, hp = nil)
    @name = name
    @type = type
    @id = id
    @hp = hp
=======
  @@all = []
  attr_accessor :name, :type, :db, :id, :hp
  def initialize(id:, name:, type:, db:, hp: nil)
    @name = name
    @type = type
    @db = db
    @id = id
    @hp = hp
    @@all << self
>>>>>>> 102f83c60bbd3f5d105f4c32dcfecce4211127f5
  end
  
 def self.save(name, type, db)
   db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id, db)
<<<<<<< HEAD
    q = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    Pokemon.new(q[0], q[1], q[2], q[3])
  end
  
  def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", new_hp, self.id)
  end
  
=======
    q = db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?", id).flatten
    id = q[0]
  end
  
  def self.all
    @@all
  end
  
  def alter()
>>>>>>> 102f83c60bbd3f5d105f4c32dcfecce4211127f5
end

