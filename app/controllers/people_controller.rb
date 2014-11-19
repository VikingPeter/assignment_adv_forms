class PeopleController < ApplicationController
  def index
  	@people = Person.all
  end

  def show
  	@person = Person.find(params[:id])
  end
  	
  end

  def new
  	@person = Person.new
  end

  def create
  	@person = Person.new(duck_enthusiast_params)
  	if @person.save
  		flash[:success] = "Keep feeding your duck, #{@person.name}"
  		redirect_to people_path
  	else
  		flash[:error] = "You are duck smasher. That is not okay, bro."
  		render 'new'
  end

  def edit
  	@person = Person.find(params[:id])
  end

  def update
  	find_person
  	if @person.update(duck_enthusiast_params)
      flash[:success] = "#{@person.name} will now successfully feed ducks."
      redirect_to @person
    else
      flash.now[:error] = "You are the machine. Please try again."
      render 'edit' 
    end
  end

  private

  def duck_enthusiast_params
  	params.require(:person).permit(:fname, :lname,
  																{habit_ids: []}, 
  																{duck_attributes:
  																	[:name, 
  																	 :color,
  																	 :totability,
  																	 :_destroy]})
  end
end
