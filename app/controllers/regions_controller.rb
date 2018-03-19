class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def show  
    @region = Region.find(params[:id])
    @states = @region.states
    puts @states
  end
  def edit
    @region = Region.find(params[:id])
  end

  def create
    @region = Region.create(region_params)

    statess = State.all.map do |state|
      state.name
    end
    @region.states.each_with_index do|state,i|
      @region.states.delete(state)
    end 
    params.keys.each do |param| 
      if statess.include?(param)
       @region.states.push(State.find_by(name: param))
      end
    end

    redirect_to regions_path()
  end

  def new
    @region = Region.new()
  end

  def update
    @region = Region.find(params[:id])
    @region.update(region_params)
    statess = State.all.map do |state|
      state.name
    end
    @region.states.each_with_index do|state,i|
      @region.states.delete(state)
    end 
    params.keys.each do |param| 
      if statess.include?(param)
       @region.states.push(State.find_by(name: param))
      end
    end

    redirect_to regions_path()
  end

  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    redirect_to regions_path()
  end

  private
  def region_params
    puts params
    params.require(:region).permit(:code_number, :name)
  end
end
