require 'rails_helper'

RSpec.describe AsMember, type: :model do
  before do
    @as_member = FactoryBot.build(:as_member)
  end

  context '募集ユーザー情報登録ができる' do
    it '全ての項目が正しく入力されていれば保存できること' do
      expect(@as_member).to be_valid
    end
    it 'do_genre_idが2以上の半角数字なら保存できる' do
      @as_member.do_genre_id=2
      expect(@as_member).to be_valid
    end
    it 'do_genre_idが13以下の半角数字なら保存できる' do
      @as_member.do_genre_id=13
      expect(@as_member).to be_valid
    end
    it 'ordered_style_idが2以上の半角数字なら保存できる' do
      @as_member.ordered_style_id=2
      expect(@as_member).to be_valid
    end
    it 'ordered_style_idが7以下の半角数字なら保存できる' do
      @as_member.ordered_style_id=7
      expect(@as_member).to be_valid
    end
    it 'want_belong_many_idが2以上の半角数字なら保存できる' do
      @as_member.want_belong_many_id=2
      expect(@as_member).to be_valid
    end
    it 'want_belong_many_idが5以下の半角数字なら保存できる' do
      @as_member.want_belong_many_id=5
      expect(@as_member).to be_valid
    end
  end

    context '募集ユーザー情報が登録できない' do
    it 'what_bandが空では登録できない' do
      @as_member.what_band=''
      @as_member.valid?
      expect(@as_member.errors.full_messages).to include"理想のバンド像を入力してください"
    end
    it 'why_bandが空では登録できない' do
      @as_member.why_band=''
      @as_member.valid?
      expect(@as_member.errors.full_messages).to include"バンド像の理由を入力してください"
    end
    it 'ideal_leaderが空では登録できない' do
      @as_member.ideal_leader=''
      @as_member.valid?
      expect(@as_member.errors.full_messages).to include"理想のリーダー像を入力してください"
    end
    it 'do_genre_idが空では登録できない' do
      @as_member.do_genre_id=''
      @as_member.valid?
      expect(@as_member.errors.full_messages).to include"最もやりたいジャンルを選んでください"
    end
    it 'ordered_style_idが1では登録できない' do
      @as_member.ordered_style_id=1
      @as_member.valid?
      expect(@as_member.errors.full_messages).to include"演奏の指示を選んでください"
    end
    it 'want_belong_many_idが1では登録できない' do
      @as_member.want_belong_many_id=1
      @as_member.valid?
      expect(@as_member.errors.full_messages).to include"掛け持ちを選んでください"
    end
  end
end
