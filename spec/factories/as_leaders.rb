FactoryBot.define do
  factory :as_leader do
    what_band         {Faker::Music::RockBand}
    why_band          {"なぜそんなバンドが良いか"}
    ideal_member      {"理想的なメンバー"}
    how_long_leader   {Faker::Number.between(from: 0, to: 9999)}
    leader_ship_id    {Faker::Number.between(from: 2, to: 6)}
    do_genre_id       {Faker::Number.between(from: 2, to: 13)}
    order_style_id    {Faker::Number.between(from: 2, to: 7)}
    compose_style_id  {Faker::Number.between(from: 2, to: 7)}
    belong_many_id    {Faker::Number.between(from: 2, to: 5)}
  end
end
