json.extract! campaign, :id, :code, :owner, :name, :active, :type, :status, :start, :end, :expectedrevenue, :budgetedcost, :actualcost, :expectedresponse, :numsent, :parentcampaign, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
