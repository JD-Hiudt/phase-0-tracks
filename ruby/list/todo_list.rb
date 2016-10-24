class TodoList
  def initialize(todo_arr)
    @list = todo_arr
  end

  def get_items
    @list
  end

  def add_item(item_to_add)
    @list.push(item_to_add)
  end

end

TodoList.new(["do the dishes","mow the lawn"])



