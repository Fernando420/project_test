class GetRepos
  require 'json'
  require 'httparty'

  def self.build!(*args)
    new(*args).build
  end

  def initialize(args)
    @args = args
  end

  def build
    HTTParty.get(url, :headers => headers)
  end

  def url
    "https://api.github.com/users/#{@args}/repos"
  end

  def headers
    {"Content-Type" => "application/json", "User-Agent" => "valid"}
  end
end