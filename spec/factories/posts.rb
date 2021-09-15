FactoryBot.define do
  factory :post do
    title         {'バンドメンバー募集します'}
    intoroduction          {"シティポップスを演奏する本格的なバンドが組みたいです。ご連絡お待ちしております！"}
    band_name_idea          {"ザ・シティポップス"}
    need_part_id      {Faker::Number.between(from: 2, to: 17)}
    area_of_activity_id       {Faker::Number.between(from: 2, to: 48)}
    genre_id    {Faker::Number.between(from: 2, to: 7)}
    professional_or_id    {Faker::Number.between(from: 2, to: 6)}
  end
end
