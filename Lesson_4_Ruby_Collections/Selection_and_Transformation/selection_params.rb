produce = {
  apple:  'fruit',
  carrot: 'vegetable',
  pear: 'fruit',
  brocoli: 'vegetable'
}

def select_fruit(produce_list, selection_critieria)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruit = {}
  loop do
    break if counter == produce_list.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == selection_critieria
      selected_fruit[current_key] = current_value
    end
    counter += 1
  end
    selected_fruit
end

puts select_fruit(produce)
