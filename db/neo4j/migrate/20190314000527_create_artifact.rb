class CreateArtifact < Neo4j::Migrations::Base
  def up
    add_constraint :Artifact, :uuid
  end

  def down
    drop_constraint :Artifact, :uuid
  end
end
