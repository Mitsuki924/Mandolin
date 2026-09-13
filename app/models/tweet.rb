class Tweet < ApplicationRecord
  belongs_to :user
  
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  
  # カレンダー表示用の日時として date カラムを使う設定
  def start_time
    self.date.to_datetime rescue self.date
  end
end
