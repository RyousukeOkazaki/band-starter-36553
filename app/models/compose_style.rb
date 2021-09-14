class  ComposeStyle < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '自分が作曲する' },
    { id: 3, name: '特定のメンバーが作曲する' },
    { id: 4, name: 'メンバー間で曲を出し合う' },
    { id: 5, name: 'セッションしながら曲を作る' },
    { id: 6, name: 'ケースバイケース' },
    { id: 7, name: '該当なし' }
  ]

  include ActiveHash::Associations
  has_many :as_leaders
end