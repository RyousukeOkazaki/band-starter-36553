class  Skill < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '初心者' },
    { id: 3, name: 'リズムに合わせて演奏できる' },
    { id: 4, name: '正確な音程で演奏できる' },
    { id: 5, name: 'メンバーの演奏を聴き分けられる' },
    { id: 6, name: 'グルーヴをコントロールできる' },
    { id: 7, name: '初見で演奏できる' },
    { id: 8, name: 'アドリブができる' },
    { id: 9, name: 'アレンジができる' },
    { id: 10, name: 'バンドのサウンド全体から自分の音を捉えられる' }
  ]

  include ActiveHash::Associations
  has_many :users
end