module RegionHelper
  def state_status_options
    State.current_states.keys.inject([]) { |memo, s| memo <<  s }
  end
end
