json.extract! bugzillauser, :id, :loginname, :realname, :password, :bugmaildisabled, :disabletext, :adminpermission, :creategroupspermission, :edituserspermission, :created_at, :updated_at
json.url bugzillauser_url(bugzillauser, format: :json)
