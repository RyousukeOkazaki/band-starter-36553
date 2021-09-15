require 'rails_helper'

RSpec.describe AsLeader, type: :model do
  before do
    @as_leader = FactoryBot.build(:as_leader)
  end

  context '募集ユーザー情報登録ができる' do
    it '全ての項目が正しく入力されていれば保存できること' do
      expect(@as_leader).to be_valid
    end
    it 'how_long_leaderが0以上の半角数字なら保存できる' do
      @as_leader.how_long_leader=0
      expect(@as_leader).to be_valid
    end
    it 'how_long_leaderが9999以下の半角数字なら保存できる' do
      @as_leader.how_long_leader=9999
      expect(@as_leader).to be_valid
    end
    it 'leader_ship_idが2以上の半角数字なら保存できる' do
      @as_leader.leader_ship_id=2
      expect(@as_leader).to be_valid
    end
    it 'leader_ship_idが6以下の半角数字なら保存できる' do
      @as_leader.leader_ship_id=6
      expect(@as_leader).to be_valid
    end
    it 'do_genre_idが2以上の半角数字なら保存できる' do
      @as_leader.do_genre_id=2
      expect(@as_leader).to be_valid
    end
    it 'do_genre_idが13以下の半角数字なら保存できる' do
      @as_leader.do_genre_id=13
      expect(@as_leader).to be_valid
    end
    it 'order_style_idが2以上の半角数字なら保存できる' do
      @as_leader.order_style_id=2
      expect(@as_leader).to be_valid
    end
    it 'order_style_idが7以下の半角数字なら保存できる' do
      @as_leader.order_style_id=7
      expect(@as_leader).to be_valid
    end
    it 'compose_style_idが2以上の半角数字なら保存できる' do
      @as_leader.compose_style_id=2
      expect(@as_leader).to be_valid
    end
    it 'compose_style_idが7以下の半角数字なら保存できる' do
      @as_leader.compose_style_id=7
      expect(@as_leader).to be_valid
    end
    it 'belong_many_idが2以上の半角数字なら保存できる' do
      @as_leader.belong_many_id=2
      expect(@as_leader).to be_valid
    end
    it 'belong_many_idが5以下の半角数字なら保存できる' do
      @as_leader.belong_many_id=5
      expect(@as_leader).to be_valid
    end
  end

    context '募集ユーザー情報が登録できない' do
    it 'what_bandが空では登録できない' do
      @as_leader.what_band=''
      @as_leader.valid?
      expect(@as_leader.errors.full_messages).to include"理想のバンド像を入力してください"
    end
    it 'why_bandが空では登録できない' do
      @as_leader.why_band=''
      @as_leader.valid?
      expect(@as_leader.errors.full_messages).to include"バンド像の理由を入力してください"
    end
    it 'ideal_memberが空では登録できない' do
      @as_leader.ideal_member=''
      @as_leader.valid?
      expect(@as_leader.errors.full_messages).to include"理想のメンバー像を入力してください"
    end
    it 'how_long_leaderが空では登録できない' do
      @as_leader.how_long_leader=''
      @as_leader.valid?
      expect(@as_leader.errors.full_messages).to include"リーダー歴を入力してください"
    end
    it 'how_long_leaderが文字列では登録できない' do
      @as_leader.how_long_leader='３'
      @as_leader.valid?
      expect(@as_leader.errors.full_messages).to include"リーダー歴は数値で入力してください"
    end
    it 'leader_ship_idが1では登録できない' do
      @as_leader.leader_ship_id=1
      @as_leader.valid?
      expect(@as_leader.errors.full_messages).to include"リーダーシップを選んでください"
    end
    it 'do_genre_idが空では登録できない' do
      @as_leader.do_genre_id=''
      @as_leader.valid?
      expect(@as_leader.errors.full_messages).to include"最もやりたいジャンルを選んでください"
    end
    it 'order_style_idが1では登録できない' do
      @as_leader.order_style_id=1
      @as_leader.valid?
      expect(@as_leader.errors.full_messages).to include"演奏の指示を選んでください"
    end
    it 'compose_style_idが1では登録できない' do
      @as_leader.compose_style_id=1
      @as_leader.valid?
      expect(@as_leader.errors.full_messages).to include"作曲のやり方を選んでください"
    end
    it 'belong_many_idが1では登録できない' do
      @as_leader.belong_many_id=1
      @as_leader.valid?
      expect(@as_leader.errors.full_messages).to include"掛け持ちを選んでください"
    end
  end
end
