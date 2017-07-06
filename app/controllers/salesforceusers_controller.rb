class SalesforceusersController < ApplicationController
  before_action :set_salesforceuser, only: [:show, :edit, :update, :destroy]

  # GET /salesforceusers
  # GET /salesforceusers.json
  def index
    @salesforceusers = Salesforceuser.all
  end

  # GET /salesforceusers/1
  # GET /salesforceusers/1.json
  def show
  end

  # GET /salesforceusers/new
  def new
    @salesforceuser = Salesforceuser.new
  end

  # GET /salesforceusers/1/edit
  def edit
  end

  # POST /salesforceusers
  # POST /salesforceusers.json
  def create
    @salesforceuser = Salesforceuser.new(salesforceuser_params)

    respond_to do |format|
      if @salesforceuser.save
        format.html { redirect_to @salesforceuser, notice: 'Salesforceuser was successfully created.' }
        format.json { render :show, status: :created, location: @salesforceuser }
      else
        format.html { render :new }
        format.json { render json: @salesforceuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salesforceusers/1
  # PATCH/PUT /salesforceusers/1.json
  def update
    respond_to do |format|
      if @salesforceuser.update(salesforceuser_params)
        format.html { redirect_to @salesforceuser, notice: 'Salesforceuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @salesforceuser }
      else
        format.html { render :edit }
        format.json { render json: @salesforceuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salesforceusers/1
  # DELETE /salesforceusers/1.json
  def destroy
    @salesforceuser.destroy
    respond_to do |format|
      format.html { redirect_to salesforceusers_url, notice: 'Salesforceuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salesforceuser
      @salesforceuser = Salesforceuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def salesforceuser_params
      params.require(:salesforceuser).permit(:name, :alias, :email, :username, :communitynickname, :title, :company, :department, :division, :address, :timezone, :locale, :language, :delegatedapprover, :manager, :role, :userlicense, :profile, :active, :marketinguser, :offlineuser, :knowledgeuser, :forcecomflowuser, :serviceclouduser, :sitecomcontributoruser, :sitecompublisheruser, :mobileuser)
    end
end
