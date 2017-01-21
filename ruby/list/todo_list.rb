class TodoList
  def initialize(list)
    @items = list
  end

  def get_items
    @items
  end

  def add_item(item)
    @items << item
  end
end