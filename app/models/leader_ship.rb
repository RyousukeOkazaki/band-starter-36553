class  LeaderShip < ActiveHash::Base
  self.data = [
     { id: 1, name: '--' },
     { id: 2, name: '自分がメンバーを引っ張る' },
     { id: 3, name: '特定のメンバーで決める' },
     { id: 4, name: 'メンバー間で意見を出し合う' },
     { id: 5, name: 'ケースバイケース' },
     { id: 6, name: '該当なし' }
   ]
  
    include ActiveHash::Associations
    has_many :as_leaders
  end