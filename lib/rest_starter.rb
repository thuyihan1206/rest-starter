# frozen_string_literal: true

require 'rest-client'

# A simple class with capabilities of fetching data through rest
class RestStarter
  attr_accessor :data

  def fetch(url)
    self.data = RestClient.get url
  end
end
