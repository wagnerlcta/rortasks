json.extract! bugzillaproduct, :id, :code, :product, :description, :openforbugentry, :enableunconfirmedstatus, :maxvotesperperson, :maxvotespersonperbug, :confirmbugsvotes, :version, :createchartdatasets, :component, :componentdescription, :defaultassignee, :defaultcclist, :created_at, :updated_at
json.url bugzillaproduct_url(bugzillaproduct, format: :json)
