class DrinksController < ApplicationController
  before_action :set_drink, only: [:show, :edit, :update, :destroy]



  def index
    @drinks = Drink.all
  end

  def show
  end

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(user_params)

    respond_to do |format|
      if @drink.save
        format.html {redirect_to @drink, notice: "Drink was successfully created." }
      else
        format.html {render :new}
      end
    end
  end

  def edit
  end

  def update
  end
  
  def destroy
  end

private

def set_drink
  @drink = Drink.find(params[:id])
end

def drink_params
  params.require(:drink).permit(:name, :amount)
end

end
