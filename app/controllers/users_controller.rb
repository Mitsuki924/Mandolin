class UsersController < ApplicationController
  def show
   @user = User.find(params[:id])
    # ユーザーが投稿した演奏会と動画を取り出す
    @tweets = @user.tweets.order(created_at: :desc)
    @movies = @user.movies.order(created_at: :desc)
    @liked_tweets = @user.liked_tweets.order(date: :asc)
  end
end
