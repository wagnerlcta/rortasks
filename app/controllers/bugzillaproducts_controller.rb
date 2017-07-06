class BugzillaproductsController < ApplicationController
  before_action :set_bugzillaproduct, only: [:show, :edit, :update, :destroy]

  # GET /bugzillaproducts
  # GET /bugzillaproducts.json
  def index
    @bugzillaproducts = Bugzillaproduct.all
  end

  # GET /bugzillaproducts/1
  # GET /bugzillaproducts/1.json
  def show
  end

  # GET /bugzillaproducts/new
  def new
    @bugzillaproduct = Bugzillaproduct.new
  end

  # GET /bugzillaproducts/1/edit
  def edit
  end

  # POST /bugzillaproducts
  # POST /bugzillaproducts.json
  def create
    @bugzillaproduct = Bugzillaproduct.new(bugzillaproduct_params)

    respond_to do |format|
      if @bugzillaproduct.save
        format.html { redirect_to @bugzillaproduct, notice: 'Bugzillaproduct was successfully created.' }
        format.json { render :show, status: :created, location: @bugzillaproduct }
      else
        format.html { render :new }
        format.json { render json: @bugzillaproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bugzillaproducts/1
  # PATCH/PUT /bugzillaproducts/1.json
  def update
    respond_to do |format|
      if @bugzillaproduct.update(bugzillaproduct_params)
        format.html { redirect_to @bugzillaproduct, notice: 'Bugzillaproduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @bugzillaproduct }
      else
        format.html { render :edit }
        format.json { render json: @bugzillaproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bugzillaproducts/1
  # DELETE /bugzillaproducts/1.json
  def destroy
    @bugzillaproduct.destroy
    respond_to do |format|
      format.html { redirect_to bugzillaproducts_url, notice: 'Bugzillaproduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bugzillaproduct
      @bugzillaproduct = Bugzillaproduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bugzillaproduct_params
      params.require(:bugzillaproduct).permit(:code, :product, :description, :openforbugentry, :enableunconfirmedstatus, :maxvotesperperson, :maxvotespersonperbug, :confirmbugsvotes, :version, :createchartdatasets, :component, :componentdescription, :defaultassignee, :defaultcclist)
    end
end
