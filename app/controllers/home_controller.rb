class HomeController < ApplicationController
  require 'httparty'

  def index
  end

  def users
    @user1 = []
    @user2 = []
    begin
      response_user1 = GitUsers.build!(params[:home][:name1])
      response_user1 = JSON.parse(response_user1.body)
      if response_user1["message"] == nil
        response_user2 = GitUsers.build!(params[:home][:name2])
        response_user2 = JSON.parse(response_user2.body)
        if response_user2["message"] == nil
          @user1 = response_user1
          @user2 = response_user2
        else
          flash[:warning] = "User 2 dont't exist"
          redirect_to root_path
        end
      else
        flash[:warning] = "User 1 dont't exist"
        redirect_to root_path
      end
    rescue Exception => error
      flash[:danger] = "Make try later"
      redirect_to root_path
    end
  end
end