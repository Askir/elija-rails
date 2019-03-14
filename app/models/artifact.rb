require 'searchkick'
class Artifact
  include Neo4j::ActiveNode
  include Neo4j::Timestamps
  searchkick
  property :url, type: String
  has_many :out, :tags, type: :tagged_with, model_class: :Tag


  def search_data
    attributes.merge(tags: tags.map(&:name))
  end
end
