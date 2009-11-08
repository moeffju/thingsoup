
class Thing 

  def self.list
    @db = CouchRest.database!("http://thingsoup.com:5984/thingsoup")

    @db.documents
  end

end
