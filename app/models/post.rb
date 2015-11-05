require 'couchrest_model'
class Post < CouchRest::Model::Base
  property :title, String
  property :content, String

  timestamps!
  design do
    view :by_title
  end
end
