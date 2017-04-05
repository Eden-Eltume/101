def name(ary)
  ary.sample
end

def activity(ary)
  ary.sample
end

def sentence(func1, func2)
  return "#{func1} went #{func2} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))
