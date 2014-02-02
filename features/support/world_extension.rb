module InstanceCreator
  
  def myHomePage
    @myHomePage ||= HomePage.new(Capybara.app_host)
  end
  
  def myResultPage
    @myResultPage ||= ResultPage.new
  end
  
end

World(InstanceCreator)

