json.extract! project, :id, :name, :description, :identifier, :homepage, :public, :subprojectof, :bugtracker, :featuretracker, :supporttracker, :created_at, :updated_at
json.url project_url(project, format: :json)
