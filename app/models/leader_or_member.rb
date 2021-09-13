class  LeaderOrMember < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'メンバーを募集する' },
    { id: 3, name: 'バンドに加入する' }
  ]

  include ActiveHash::Associations
  has_many :users
end