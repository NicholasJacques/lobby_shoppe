class Cart
  attr_reader :contents

  def initialize(initial_contents)
    @contents = initial_contents || {}
  end

  def items
    @contents.map do |scumbag_id, quantity|
      scumbag = Scumbag.find(scumbag_id)
      CartItem.new(scumbag, quantity)
    end
  end

  def total_count
    contents.values.sum
  end

  def add_item(scumbag_id)
    contents[scumbag_id.to_s] ||= 0
    contents[scumbag_id.to_s] += 1
  end

  def count_of(scumbag_id)
    contents[scumbag_id.to_s]
  end

end