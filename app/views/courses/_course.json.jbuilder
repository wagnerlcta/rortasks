json.extract! course, :id, :code, :fullname, :shortname, :courseidnumber, :summary, :format, :numberofweekstopics, :start, :hiddensections, :newsitemstoshow, :showgrades, :showactivityreports, :maxuploadsize, :defaultroles, :created_at, :updated_at
json.url course_url(course, format: :json)
