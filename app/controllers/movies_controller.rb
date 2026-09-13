class MoviesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  # 🎬 動画一覧
  def index
    @movies = Movie.all
  end

  # 🎬 新規投稿フォーム
  def new
    @movie = Movie.new
  end

  # 🎬 投稿の保存
  def create
    movie = Movie.new(movie_params)
    movie.user_id = current_user.id
    if movie.save
      redirect_to movies_path # 投稿後は「動画一覧（/movies）」へ！
    else
      render :new
    end
  end

  # 🎬 動画詳細ページ（設計図の「演奏動画詳細」用！）
  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    movie = Movie.find(params[:id])
    if movie.update(movie_params)
      redirect_to movie_path(movie.id) # 更新後は動画詳細ページへ！
    else
      render :edit
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    redirect_to movies_path # 削除後は動画一覧へリダイレクト
  end

  private
  def movie_params
    params.require(:movie).permit(:movietitle, :link, :point)
  end
end