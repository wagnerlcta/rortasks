class BugzillausersController < ApplicationController
  before_action :set_bugzillauser, only: [:show, :edit, :update, :destroy]

  # GET /bugzillausers
  # GET /bugzillausers.json
  def index
    @bugzillausers = Bugzillauser.all
  end

  # GET /bugzillausers/1
  # GET /bugzillausers/1.json
  def show
  end

  # GET /bugzillausers/new
  def new
    @bugzillauser = Bugzillauser.new
  end

  # GET /bugzillausers/1/edit
  def edit
  end

  # POST /bugzillausers
  # POST /bugzillausers.json
  def create
    @bugzillauser = Bugzillauser.new(bugzillauser_params)

    respond_to do |format|
      if @bugzillauser.save
        format.html { redirect_to @bugzillauser, notice: 'Bugzillauser was successfully created.' }
        format.json { render :show, status: :created, location: @bugzillauser }
      else
        format.html { render :new }
        format.json { render json: @bugzillauser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bugzillausers/1
  # PATCH/PUT /bugzillausers/1.json
  def update
    respond_to do |format|
      if @bugzillauser.update(bugzillauser_params)
        format.html { redirect_to @bugzillauser, notice: 'Bugzillauser was successfully updated.' }
        format.json { render :show, status: :ok, location: @bugzillauser }
      else
        format.html { render :edit }
        format.json { render json: @bugzillauser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bugzillausers/1
  # DELETE /bugzillausers/1.json
  def destroy
    @bugzillauser.destroy
    respond_to do |format|
      format.html { redirect_to bugzillausers_url, notice: 'Bugzillauser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bugzillauser
      @bugzillauser = Bugzillauser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bugzillauser_params
      params.require(:bugzillauser).permit(:loginname, :realname, :password, :bugmaildisabled, :disabletext, :adminpermission, :creategroupspermission, :edituserspermission)
    end
end
