FactoryBot.define do
  factory :as_member do
    what_band         {Faker::Music::RockBand}
    why_band          {"なぜそんなバンドが良いか"}
    ideal_leader      {"理想的なリーダー"}
    do_genre_id       {Faker::Number.between(from: 2, to: 13)}
    ordered_style_id    {Faker::Number.between(from: 2, to: 7)}
    want_belong_many_id    {Faker::Number.between(from: 2, to: 5)}
  end
end
