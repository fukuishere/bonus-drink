require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  context '瓶数が足らず新しい飲み物と交換できない場合' do
    specify '購入した本数が 0 の場合、飲める本数は 0 になること' do
      expect(BonusDrink.total_count_for(0)).to eq 0
    end

    specify '購入した本数が 1 の場合、飲める本数は 1 になること' do
      expect(BonusDrink.total_count_for(1)).to eq 1
    end
  end

  context '瓶数が足りて新しい飲み物と交換できる場合' do
    specify '購入した本数が 3 の場合、飲める本数は 4 になること' do
      expect(BonusDrink.total_count_for(3)).to eq 4
    end

    specify '購入した本数が 11 の場合、飲める本数は 16 になること' do
      expect(BonusDrink.total_count_for(11)).to eq 16
    end

    specify '購入した本数が 100 の場合、飲める本数は 149 になること' do
      expect(BonusDrink.total_count_for(100)).to eq 149
    end
  end
end
