class PeopleController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_person, only: [:show, :edit, :update, :destroy]
  before_action :check_person, only:[:index, :show]
  #no need of CanCan for a small authorization logic
  before_action :do_you_have_the_right, except: [:index]

  # GET /people
  # GET /people.json
  def index
    @people = Person.where(user_id: current_user.id)
  end

  # GET /people/1
  # GET /people/1.json
  def show
  end

  # GET /people/new
  def new
    #redirect_to root_path, :notice => "A User can only have one profile (Person)" unless Person.where(:user_id => current_user.id).count
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)
    @person.user = current_user

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @person }
      else
        format.html { render action: 'new' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:user_id, :first_name, :last_name, :street_address, :city, :province, :postal_code, :telephone_number)
    end
    def do_you_have_the_right
      #callback
      if @person.nil? then return true ; end
      #this is the logic for this function
      if @person.user_id != current_user.id
        redirect_to people_path
        flash[:notice] = "You do not have the right permission"
      end
    end
end
