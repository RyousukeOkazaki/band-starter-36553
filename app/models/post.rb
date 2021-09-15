class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :need_part
  belongs_to :area_of_activity
  belongs_to :genre
  belongs_to :professional_or
  
  with_options presence: true do
    validates :title, :introduction, :band_name_idea
  end
  with_options numericality: { other_than: 1 , message: "を選んでください"} do
    validates :need_part_id, :area_of_activity_id, :genre_id, :professional_or_id
  end
end
