
module InstanceCreator
  def myHomePage
    @myHomePage ||= HomePage.new(Capybara.app_host)
  end
  
  def mySearchBar
    @mySearchBar ||= SearchBar.new ('twotabsearchtextbox')
  end
  def myResult    
      @myResult ||= Result.new('0')
  end
end
World(InstanceCreator)

