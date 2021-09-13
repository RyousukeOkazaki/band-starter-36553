FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    date_of_birth         {Faker::Date.between(from: '1900-01-01', to: '2021-12-31')}
    introduction          {'初めまして。よろしくお願いします！'}
    how_long_play         {Faker::Number.between(from: 0, to: 90)}
    how_long_blank        {Faker::Number.between(from: 0, to: 90)}
    how_long_band         {Faker::Number.between(from: 0, to: 90)}
    how_many_band         {Faker::Number.between(from: 0, to: 90)}
    how_many_compose      {Faker::Number.between(from: 0, to: 90)}
    favorite_artist       {'Jimi Hendrix'}
    URL                   {'http:://yahoo.co.jp'}
    career                {'ソロ活動を一貫して続けながら散発的にバンド活動を続けてきました'}
    sex_id                {Faker::Number.between(from: 2, to: 3)}
    character_id          {Faker::Number.between(from: 2, to: 13)}
    what_play_id          {Faker::Number.between(from: 2, to: 17)}
    genre_id              {Faker::Number.between(from: 2, to: 13)}
    prefecture_id         {Faker::Number.between(from: 2, to: 48)}
    active_day_id         {Faker::Number.between(from: 2, to: 11)}
    skill_id              {Faker::Number.between(from: 2, to: 10)}
    leader_or_member_id   {Faker::Number.between(from: 2, to: 3)}
  end
end
