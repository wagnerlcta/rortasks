# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170706035239) do

  create_table "bugs", force: :cascade do |t|
    t.string   "code"
    t.string   "product"
    t.string   "component"
    t.string   "version"
    t.string   "summary"
    t.string   "description"
    t.string   "hardware"
    t.integer  "importance"
    t.string   "targetmilestone"
    t.string   "assignedto"
    t.string   "qacontact"
    t.string   "url"
    t.string   "whiteboard"
    t.string   "keywords"
    t.string   "tags"
    t.string   "dependson"
    t.string   "blocks"
    t.float    "origestimated"
    t.float    "hoursworked"
    t.float    "hoursleft"
    t.date     "deadline"
    t.string   "additionalcomments"
    t.string   "status"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "bugzillaproducts", force: :cascade do |t|
    t.string   "code"
    t.string   "product"
    t.string   "description"
    t.boolean  "openforbugentry"
    t.boolean  "enableunconfirmedstatus"
    t.integer  "maxvotesperperson"
    t.integer  "maxvotespersonperbug"
    t.integer  "confirmbugsvotes"
    t.string   "version"
    t.boolean  "createchartdatasets"
    t.string   "component"
    t.string   "componentdescription"
    t.string   "defaultassignee"
    t.string   "defaultcclist"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "bugzillausers", force: :cascade do |t|
    t.string   "loginname"
    t.string   "realname"
    t.string   "password"
    t.boolean  "bugmaildisabled"
    t.string   "disabletext"
    t.boolean  "adminpermission"
    t.boolean  "creategroupspermission"
    t.boolean  "edituserspermission"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "campaigns", force: :cascade do |t|
    t.string   "code"
    t.string   "owner"
    t.string   "name"
    t.boolean  "active"
    t.string   "type"
    t.string   "status"
    t.date     "start"
    t.date     "end"
    t.integer  "expectedrevenue"
    t.integer  "budgetedcost"
    t.integer  "actualcost"
    t.float    "expectedresponse"
    t.integer  "numsent"
    t.string   "parentcampaign"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "code"
    t.string   "fullname"
    t.string   "shortname"
    t.integer  "courseidnumber"
    t.string   "summary"
    t.string   "format"
    t.integer  "numberofweekstopics"
    t.date     "start"
    t.string   "hiddensections"
    t.integer  "newsitemstoshow"
    t.boolean  "showgrades"
    t.boolean  "showactivityreports"
    t.integer  "maxuploadsize"
    t.string   "defaultroles"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "issues", force: :cascade do |t|
    t.string   "code"
    t.string   "project"
    t.string   "issuetype"
    t.string   "summary"
    t.integer  "storypoints"
    t.string   "priority"
    t.date     "duedate"
    t.string   "components"
    t.string   "affectsversions"
    t.string   "fixversions"
    t.string   "assignee"
    t.string   "environment"
    t.string   "description"
    t.string   "labels"
    t.string   "epic"
    t.string   "sprint"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "leads", force: :cascade do |t|
    t.string   "code"
    t.string   "owner"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "company"
    t.string   "title"
    t.string   "status"
    t.string   "phone"
    t.string   "email"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "county"
    t.string   "website"
    t.integer  "numberofemployees"
    t.integer  "annualrevenue"
    t.string   "source"
    t.string   "industry"
    t.string   "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "model"
    t.string   "sku"
    t.float    "weight"
    t.string   "manufacturer"
    t.string   "status"
    t.string   "taxclass"
    t.string   "urlkey"
    t.string   "visibility"
    t.date     "setproductasnewfromdate"
    t.date     "setproductasnewtodate"
    t.string   "countryofmanufacture"
    t.float    "price"
    t.float    "cost"
    t.float    "specialprice"
    t.date     "specialpricefromdate"
    t.date     "specialpricetodate"
    t.string   "applymap"
    t.float    "displayactualprice"
    t.float    "suggestedretailprice"
    t.string   "metatitle"
    t.string   "metakeywords"
    t.string   "metadescription"
    t.string   "shortdescription"
    t.string   "description"
    t.string   "indepth"
    t.string   "dimensions"
    t.string   "activationinformation"
    t.string   "color"
    t.string   "customdesign"
    t.date     "activefrom"
    t.date     "activeto"
    t.string   "customlayoutupdate"
    t.string   "displayproductoptionsin"
    t.string   "pagelayout"
    t.boolean  "enablerecurringprofile"
    t.boolean  "allowgiftmessage"
    t.boolean  "managestock"
    t.float    "qty"
    t.float    "qtyforitemsstatustobecomeoutofstock"
    t.float    "minimumqtyallowedinshoppingcart"
    t.float    "maximumqtyallowedinshoppingcart"
    t.boolean  "qtyusesdecimals"
    t.string   "backorders"
    t.float    "notifyforquantitybelow"
    t.boolean  "enableqtyincrements"
    t.boolean  "stockavailability"
    t.string   "tags"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "identifier"
    t.string   "homepage"
    t.boolean  "public"
    t.string   "subprojectof"
    t.boolean  "bugtracker"
    t.boolean  "featuretracker"
    t.boolean  "supporttracker"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "description"
    t.boolean  "displaydescription"
    t.datetime "open"
    t.datetime "close"
    t.integer  "timelimit"
    t.string   "whentimeexpires"
    t.integer  "submissiongraceperiod"
    t.string   "gradecategory"
    t.string   "attemptsallowed"
    t.string   "gradingmethod"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "salesforceusers", force: :cascade do |t|
    t.string   "name"
    t.string   "alias"
    t.string   "email"
    t.string   "username"
    t.string   "communitynickname"
    t.string   "title"
    t.string   "company"
    t.string   "department"
    t.string   "division"
    t.string   "address"
    t.string   "timezone"
    t.string   "locale"
    t.string   "language"
    t.string   "delegatedapprover"
    t.string   "manager"
    t.string   "role"
    t.string   "userlicense"
    t.string   "profile"
    t.boolean  "active"
    t.boolean  "marketinguser"
    t.boolean  "offlineuser"
    t.boolean  "knowledgeuser"
    t.boolean  "forcecomflowuser"
    t.boolean  "serviceclouduser"
    t.boolean  "sitecomcontributoruser"
    t.boolean  "sitecompublisheruser"
    t.boolean  "mobileuser"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "testcases", force: :cascade do |t|
    t.string   "code"
    t.string   "title"
    t.string   "summary"
    t.string   "preconditions"
    t.string   "status"
    t.string   "importance"
    t.integer  "minutes"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
