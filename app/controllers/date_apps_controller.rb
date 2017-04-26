class DateAppsController < ApplicationController
  before_action :set_date_app, only: [:show, :edit, :update, :destroy]
  before_action :set_counter, only: [:match]
  # GET /date_apps
  # GET /date_apps.json
  def index
    @date_apps = DateApp.all
  end

  # GET /date_apps/1
  # GET /date_apps/1.json
  def show
  end

  def match
    @topic1 = Topic.find(session[:counter])
    @topic2 = Topic.find(session[:counter] + 1)
    session[:counter] += 2
  end

  def results
    @match = DateApp.find(params[:user_id])
  end

  def add_dislike
    user = DateApp.find(params[:user_id])
    topic = Topic.find(params[:topic_id])
    user.topics << topic
    user.save
    #check to see if there is a match
    has_match = user.check_for_matches
    #if there is a match...
    if has_match.present?
      #redirct to the results page, with that users
      if has_match.respond_to? :map
        redirect_to results_path(user_id: has_match.sample.id)
      else
        redirect_to results_path(user_id: has_match.id)
      end
    else
      redirect_to :match
    end
  end



  # GET /date_apps/new
  def new
    @date_app = DateApp.new
  end

  # GET /date_apps/1/edit
  def edit
  end

  # POST /date_apps
  # POST /date_apps.json
  def create
    @date_app = DateApp.new(date_app_params)

    respond_to do |format|
      if @date_app.save
        format.html { redirect_to @date_app, notice: 'Date app was successfully created.' }
        format.json { render :show, status: :created, location: @date_app }
      else
        format.html { render :new }
        format.json { render json: @date_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_apps/1
  # PATCH/PUT /date_apps/1.json
  def update
    respond_to do |format|
      if @date_app.update(date_app_params)
        format.html { redirect_to @date_app, notice: 'Date app was successfully updated.' }
        format.json { render :show, status: :ok, location: @date_app }
      else
        format.html { render :edit }
        format.json { render json: @date_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_apps/1
  # DELETE /date_apps/1.json
  def destroy
    @date_app.destroy
    respond_to do |format|
      format.html { redirect_to date_apps_url, notice: 'Date app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_app
      @date_app = DateApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def date_app_params
      params.require(:date_app).permit(:name, :sex, :dislikes, :age)
    end

    def set_counter
      if !session[:counter] || session[:counter] >= Topic.last.id
        session[:counter] = Topic.first.id
      end
    end
end
