
module InstanceCreator
  def mySearchBar
    @mySearchBar ||= SearchBar.new 
  end
  def myResult    
      @myResult ||= Result.new
  end
  #etc
end
World(InstanceCreator)

