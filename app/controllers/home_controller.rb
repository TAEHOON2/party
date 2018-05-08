class HomeController < ApplicationController
  def index

  end

  def new
    @people=Person.all
    while(true) do

    @congrats=@people.sample(@people.count)
    @theperson=@congrats.first
    @personsname=@congrats.first.name

        if @personsname!=params[:myname]
        break
      end


      end

      @theperson.destroy


  end

  def create
    @person=Person.new
    @person.name=params[:name]
    @person.save
    #
    # redirect_to '/'
  end

end
