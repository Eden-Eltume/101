names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(single_name, single_activity)
  single_name + " went " + single_activity + " today!"
end

puts sentence(name(names), activity(activities))
