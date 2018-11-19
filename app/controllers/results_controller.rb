class ResultsController < ApplicationController
  def winner_users
    # begin
    #   response_repos1 = GetRepos.build!(params["user1"])
    #   response_repos1 = JSON.parse(response_repos1.body)
    #   response_repos2 = GetRepos.build!(params["user2"])
    #   response_repos2 = JSON.parse(response_repos2.body)
    #   @results_winner = SearchWinner.build!(response_repos1, response_repos2)
    @results_winner = {:response1=>[{:name=>"sm-liy", :stars=>0}], :response2=>[{:name=>"restaurant365", :stars=>0}, {:name=>"pin-pon-master", :stars=>0}, {:name=>"panel_rh", :stars=>0}, {:name=>"dashboard", :stars=>2}, {:name=>"api-rh", :stars=>2}], :stars_user1=>0, :stars_user2=>4, :name_user1=>"Fernando420", :name_user2=>"torvick", :avatar_user1=>"https://avatars3.githubusercontent.com/u/29613794?v=4", :avatar_user2=>"https://avatars3.githubusercontent.com/u/43286336?v=4"}
    # rescue Exception => error
    #   flash[:danger] = "Make try later"
    #   redirect_to root_path()
    # end
  end
end
