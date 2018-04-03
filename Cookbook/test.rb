require_relative 'task'

p task = Task.new("eat")
p task.done?
task.done!
p task.done?
