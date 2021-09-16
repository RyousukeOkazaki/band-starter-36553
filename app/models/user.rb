class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  belongs_to :active_day
  belongs_to :character
  belongs_to :genre
  belongs_to :leader_or_member
  belongs_to :prefecture
  belongs_to :sex
  belongs_to :skill
  belongs_to :what_play
  has_one :as_leader
  has_one :as_member
  has_many :user_rooms
  has_many :rooms, through: :user_rooms

  with_options presence:true do
    validates :nickname, :date_of_birth, :introduction
    validates :how_long_play, :how_long_blank, :how_long_band, :how_many_band, :how_many_compose, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 9999 }
    validates :favorite_artist, :URL, :career
  end

  #validates :URL, 半角英数字に設定したい

  with_options presence: true, numericality: { other_than: 1 , message: "を選んでください"} do
    validates :active_day_id, :character_id, :genre_id, :leader_or_member_id, :prefecture_id, :sex_id, :skill_id, :what_play_id
  end
#アクティブハッシュにpresence:trueは不要。削除し単体テストの内容も一部要削除。
  
   
end
