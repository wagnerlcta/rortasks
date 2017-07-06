json.extract! quiz, :id, :code, :name, :description, :displaydescription, :open, :close, :timelimit, :whentimeexpires, :submissiongraceperiod, :gradecategory, :attemptsallowed, :gradingmethod, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
