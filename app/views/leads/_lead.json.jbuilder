json.extract! lead, :id, :code, :owner, :firstname, :lastname, :company, :title, :status, :phone, :email, :street, :city, :state, :zipcode, :county, :website, :numberofemployees, :annualrevenue, :source, :industry, :description, :created_at, :updated_at
json.url lead_url(lead, format: :json)
