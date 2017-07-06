json.extract! bug, :id, :code, :product, :component, :version, :summary, :description, :hardware, :importance, :targetmilestone, :assignedto, :qacontact, :url, :whiteboard, :keywords, :tags, :dependson, :blocks, :origestimated, :hoursworked, :hoursleft, :deadline, :additionalcomments, :status, :created_at, :updated_at
json.url bug_url(bug, format: :json)
