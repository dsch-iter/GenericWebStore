class HomePage
  include Capybara::DSL
  def initialize(url)
    @url = url
    visit(@url)
  end
end