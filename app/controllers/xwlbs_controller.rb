class XwlbsController < ApplicationController
  before_action :set_xwlb, only: %i[ show edit update destroy ]

  # GET /xwlbs or /xwlbs.json
  def index
    @xwlbs = Xwlb.all
  end

  # GET /xwlbs/1 or /xwlbs/1.json
  def show
  end

  # GET /xwlbs/new
  def new
    @xwlb = Xwlb.new
  end

  # GET /xwlbs/1/edit
  def edit
  end

  # POST /xwlbs or /xwlbs.json
  def create
    @xwlb = Xwlb.new(xwlb_params)

    respond_to do |format|
      if @xwlb.save
        format.html { redirect_to xwlb_url(@xwlb), notice: "Xwlb was successfully created." }
        format.json { render :show, status: :created, location: @xwlb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @xwlb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xwlbs/1 or /xwlbs/1.json
  def update
    respond_to do |format|
      if @xwlb.update(xwlb_params)
        format.html { redirect_to xwlb_url(@xwlb), notice: "Xwlb was successfully updated." }
        format.json { render :show, status: :ok, location: @xwlb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @xwlb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xwlbs/1 or /xwlbs/1.json
  def destroy
    @xwlb.destroy!

    respond_to do |format|
      format.html { redirect_to xwlbs_url, notice: "Xwlb was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xwlb
      @xwlb = Xwlb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def xwlb_params
      params.require(:xwlb).permit(:date, :index_of_day, :title, :fulltext)
    end
end
