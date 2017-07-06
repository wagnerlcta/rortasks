json.extract! testcase, :id, :code, :title, :summary, :preconditions, :status, :importance, :minutes, :created_at, :updated_at
json.url testcase_url(testcase, format: :json)
