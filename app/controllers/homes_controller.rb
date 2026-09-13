class HomesController < ApplicationController
  def top
    # 🎻 日付が近い順に最大3件取得
    @recent_tweets = Tweet.order(date: :asc).limit(3)

    # 🎬 新しく投稿された順に最大3件取得
    @recent_movies = Movie.order(created_at: :desc).limit(3)
  end
  def about
  end
end