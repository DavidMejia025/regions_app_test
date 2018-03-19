class StatesController < ApplicationController
  def edit
  end

  def create
    
    @state = Region.states.create(state_params)
    redirect_to state_path()
  end

  def new
    @state = State.new
  end

  def update
  end

  def destroy
  end

  private
  def state_params
    params.require(:state).permit(:name, :code_numer, :current_status)
  end
end
