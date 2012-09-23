class ReponsesController < ApplicationController
  # GET /reponses
  # GET /reponses.json
  def index
    
    @question = Admin::Question.last 

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @question }
    end
  end
  
  def show_answers
    @reponses = Reponse.all 
    @questions = Admin::Question.all 
  end

  # GET /reponses/1
  # GET /reponses/1.json
  def show
    @reponse = Reponse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reponse }
    end
  end

  # GET /reponses/new
  # GET /reponses/new.json
  def new
    @reponse = Reponse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reponse }
    end
  end

  # GET /reponses/1/edit
  def edit
    @reponse = Reponse.find(params[:id])
  end

  # POST /reponses
  # POST /reponses.json
  def create
    @reponse = Reponse.new(params[:reponse])

    respond_to do |format|
      if @reponse.save
        format.html { redirect_to '/', notice: 'Reponse was successfully created.' }
        format.json { render json: @reponse, status: :created, location: @reponse }
      else
        format.html { redirect_to '/', notice: @reponse.errors.full_messages.first }
        format.json { render json: @reponse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reponses/1
  # PUT /reponses/1.json
  def update
    @reponse = Reponse.find(params[:id])

    respond_to do |format|
      if @reponse.update_attributes(params[:reponse])
        format.html { redirect_to @reponse, notice: 'Reponse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reponse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reponses/1
  # DELETE /reponses/1.json
  def destroy
    @reponse = Reponse.find(params[:id])
    @reponse.destroy

    respond_to do |format|
      format.html { redirect_to reponses_url }
      format.json { head :no_content }
    end
  end
end
