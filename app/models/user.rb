class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  belongs_to :active_day, :character, :genre, :leader_or_member, :prefecture, :sex, :skill, :what_play

  with_options numericality: { other_than: 1 , message: "can't be blank"} do
    validates :active_day_id, :character_id, :genre_id, :leader_or_member_id, :prefecture_id, :sex_id, :skill_id, :what_play_id
  end
   
end
