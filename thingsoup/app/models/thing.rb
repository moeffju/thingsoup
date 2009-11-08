
class Thing 

  def self.list
    @db = CouchRest.database!("http://127.0.0.1:5984/thingsoup")

    @db.view("by_displayname/by_displayname")
  end

end
