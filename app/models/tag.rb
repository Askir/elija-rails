class Tag 
  include Neo4j::ActiveNode
  property :name, type: String
  has_many :in, :artifacts, type: :tagged_with, model_class: :Artifact



end
