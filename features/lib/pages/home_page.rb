class HomePage
  include Capybara::DSL

  def initialize(url)
    @url = url
    visit(@url)
    @searchBar = SearchBar.new ('twotabsearchtextbox')
  end
  
  def search(query)
    @searchBar.search(query)
  end

  def submit()
    @searchBar.submit
  end
end