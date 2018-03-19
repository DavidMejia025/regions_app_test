class StatesController < ApplicationController
  def index
    @states = State.all
  end

  def show  
    @state = State.find(params[:id])
    @regions = @state.regions
  end

  def edit
    @state = State.find(params[:id])
  end

  def create
    @state = State.create(state_params)
    redirect_to states_path()
  end

  def new
    @state = State.new
  end

  def update
    @state = State.find(params[:id])
    @state.update(state_params)
    if @state.current_state=="Inactivo"
      @state.regions.each_with_index do |region, i|
        @state.regions.delete(region)
      end
    end
    redirect_to states_path()
  end

  def destroy
    @state = State.find(params[:id])
    @state.destroy
    redirect_to states_path()
  end

  private
  def state_params
    params.require(:state).permit(:name, :code_number, :current_state)
  end
end