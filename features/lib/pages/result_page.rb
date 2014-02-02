class ResultPage
  include Capybara::DSL
  
  def getResult(index)
    if index >= 0
      @result ||= Result.new(index)
    else
      raise("No negative index allowed")
    end
  end
  
  def verifyResult(index, anExpectedText)
    getResult(index).verifyText(anExpectedText)
  end
  
end