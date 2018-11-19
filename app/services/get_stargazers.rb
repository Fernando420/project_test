class GetStargazers
  require 'json'
  require 'httparty'

  def self.build!(*args,repo)
    new(*args,repo).build
  end

  def initialize(args,repo)
    @args = args
    @repo = repo
  end

  def build
    HTTParty.get(url, :headers => headers)
  end

  def url
    "https://api.github.com/repos/#{@args}/#{@repo}/stargazers"
  end

  def headers
    {"Content-Type" => "application/json", "User-Agent" => "valid"}
  end
end