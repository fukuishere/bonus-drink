# BonusDrink Class
#
class BonusDrink
  AMOUNT_CAN_CONVERT = 3

  # 空き瓶交換によるボーナスを含めたトータル本数の取得
  #
  # @param [Integer] amount 初期購入本数
  # @return [Integer] ボーナスも加算したトータル本数
  # @example Bonus Drinks total count
  #   # ３本につき１本プレゼントされる
  #   BonusDrink.total_count_for(0) #=> 0
  #   BonusDrink.total_count_for(1) #=> 1
  #   BonusDrink.total_count_for(3) #=> 4
  #   BonusDrink.total_count_for(11) #=> 16
  #
  def self.total_count_for(amount)
    not_yet_convert_amount = amount
    total_amount = amount

    while not_yet_convert_amount >= AMOUNT_CAN_CONVERT
      converted_amount, not_yet_convert_amount =
        not_yet_convert_amount.divmod AMOUNT_CAN_CONVERT
      total_amount += converted_amount
      not_yet_convert_amount += converted_amount
    end

    total_amount
  end
end
