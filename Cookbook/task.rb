# ---- task app livecode (starting from the bottom)

# starting from model (creating task.rb and giving it class Task)


class Task

  attr_accessor :description

  def initialize(description)
    @description = description
    @done = false
  end

  def done?
    @done
  end

  def done!
    @done = true
    # optionally return as self to be more OOP related
  end

end
