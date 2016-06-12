class TodoList

  def initialize(array_list)
    @internal_list = array_list
  end

  def add_item(item)
    @internal_list << item
  end

  def delete_item(item)
    @internal_list.delete(item)
  end

  def get_item(index)
    @internal_list[index]
  end

  def get_items
    @internal_list
  end

end