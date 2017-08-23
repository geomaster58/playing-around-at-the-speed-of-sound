class TheMothsController < ApplicationController
  before_action :set_the_moth, only: [:show, :edit, :update, :destroy]

  # GET /the_moths
  # GET /the_moths.json
  def index
    @the_moths = TheMoth.all
  end

  # GET /the_moths/1
  # GET /the_moths/1.json
  def show
  end

  # GET /the_moths/new
  def new
    @the_moth = TheMoth.new
  end

  # GET /the_moths/1/edit
  def edit
  end

  # POST /the_moths
  # POST /the_moths.json
  def create
    @the_moth = TheMoth.new(the_moth_params)

    respond_to do |format|
      if @the_moth.save
        format.html { redirect_to @the_moth, notice: 'The moth was successfully created.' }
        format.json { render :show, status: :created, location: @the_moth }
      else
        format.html { render :new }
        format.json { render json: @the_moth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /the_moths/1
  # PATCH/PUT /the_moths/1.json
  def update
    respond_to do |format|
      if @the_moth.update(the_moth_params)
        format.html { redirect_to @the_moth, notice: 'The moth was successfully updated.' }
        format.json { render :show, status: :ok, location: @the_moth }
      else
        format.html { render :edit }
        format.json { render json: @the_moth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /the_moths/1
  # DELETE /the_moths/1.json
  def destroy
    @the_moth.destroy
    respond_to do |format|
      format.html { redirect_to the_moths_url, notice: 'The moth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_the_moth
      @the_moth = TheMoth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def the_moth_params
      params.require(:the_moth).permit(:title, :body)
    end
end
