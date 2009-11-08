
class Thing

  attr_accessor :db

  def _connect
    @db = CouchRest.database!("http://localhost:5984/thingsoup")
  end

  def list
    _connect
    @db.view("by_displayname/by_displayname")
  end
  
  def get(utid)
    _connect
    @db.get(utid)
  end

end
