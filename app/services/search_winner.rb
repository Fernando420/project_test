class SearchWinner
  require 'json'
  require 'httparty'

  def self.build!(*user1, user2)
    new(*user1, user2).build
  end

  def initialize(user1, user2)
    @user1 = user1
    @user2 = user2
    @array_user1 = []
    @array_user2 = []
  end

  def build
    if !@user1.empty?
      @user1.each do |repos|
        json = {
            name: repos["name"],
            stars: repos["stargazers_count"]
        }
        @array_user1 << json
      end
      name_user1 = @user1[0]["owner"]["login"] if !@user1.empty?
      avatar_user1 = @user1[0]["owner"]["avatar_url"] if !@user1.empty?
      stars_user1 = @array_user1.pluck(:stars).sum if !@array_user1.empty?
      @array_user1 = @array_user1.sort_by { |hash| hash['stars'].to_i }.reverse! if !@array_user1.empty?
      # @array_user1 = @array_user1.reverse! if !@array_user1.empty?
    end
    if !@user2.empty?
      @user2.each do |repos|
        json1 = {
            name: repos["name"],
            stars: repos["stargazers_count"]
        }
        @array_user2 << json1
      end
      name_user2 = @user2[0]["owner"]["login"] if !@user2.empty?
      avatar_user2 = @user2[0]["owner"]["avatar_url"] if !@user2.empty?
      stars_user2 = @array_user2.pluck(:stars).sum if !@array_user2.empty?
      @array_user2 = @array_user2.sort_by { |hash| hash['stars'].to_i }.reverse! if !@array_user2.empty?
      # @array_user2 = @array_user2.reverse! if !@array_user2.empty?
    end
    return {response1: @array_user1, response2: @array_user2, stars_user1: stars_user1, stars_user2: stars_user2, name_user1: name_user1 , name_user2: name_user2, avatar_user1: avatar_user1, avatar_user2: avatar_user2}
  end
end