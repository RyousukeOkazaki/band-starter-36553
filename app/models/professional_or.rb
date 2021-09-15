class ProfessionalOr < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'プロ志向' },
    { id: 3, name: 'インディーズ志向' },
    { id: 4, name: 'アマチュア志向' },
    { id: 5, name: 'ケースバイケース' },
    { id: 6, name: '該当なし' }
  ]

  include ActiveHash::Associations
  has_many :posts
end