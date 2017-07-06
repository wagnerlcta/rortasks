json.extract! issue, :id, :code, :project, :issuetype, :summary, :storypoints, :priority, :duedate, :components, :affectsversions, :fixversions, :assignee, :environment, :description, :labels, :epic, :sprint, :created_at, :updated_at
json.url issue_url(issue, format: :json)
