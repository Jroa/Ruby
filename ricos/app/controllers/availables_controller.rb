class AvailablesController < ApplicationController
  # GET /availables
  # GET /availables.json
  def index
    @availables = Available.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @availables }
    end
  end

  # GET /availables/1
  # GET /availables/1.json
  def show
    @available = Available.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @available }
    end
  end

  # GET /availables/new
  # GET /availables/new.json
  def new
    @available = Available.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @available }
    end
  end

  # GET /availables/1/edit
  def edit
    @available = Available.find(params[:id]) 


  end

  # POST /availables
  # POST /availables.json
  def create
    @available = Available.new(params[:available])

    respond_to do |format|
      if @available.save
        format.html { redirect_to @available, notice: 'Available was successfully created.' }
        format.json { render json: @available, status: :created, location: @available }
      else
        format.html { render action: "new" }
        format.json { render json: @available.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /availables/1
  # PUT /availables/1.json
  def update
    @available = Available.find(params[:id])
    @available.available = "1"
    @available.save
    # Pusher.trigger!("miapp", "available:create", {})
    redirect_to availables_path
  end

  # DELETE /availables/1
  # DELETE /availables/1.json
  def destroy
    @available = Available.find(params[:id])
    @available.destroy

    respond_to do |format|
      format.html { redirect_to availables_url }
      format.json { head :no_content }
    end
  end
end
