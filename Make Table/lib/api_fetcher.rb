require 'httparty'

class ApiFetcher
  include HTTParty
  base_uri 'https://jsonplaceholder.typicode.com' # Replace with your API endpoint

  def fetch_data
    response = self.class.get('/posts') # Replace '/posts' with your API endpoint path
    response.parsed_response if response.success?
  end
end