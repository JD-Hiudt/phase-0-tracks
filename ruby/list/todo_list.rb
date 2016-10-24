class TodoList
  def initialize(todo_arr)
    @list = todo_arr
  end

  def get_items
    @list
  end

end

TodoList.new(["do the dishes","mow the lawn"])



