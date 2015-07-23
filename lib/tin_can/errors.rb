class TinCan::EventController::ActionMissing < StandardError
  def initialize controller
    super "Action not supplied for controller: #{controller}."
  end
end

class TinCan::EventController::ActionNotDefined < StandardError
  def initialize action, controller
    super "The action: #{action} is not defined for #{controller}."
  end
end

class TinCan::EventController::ControllerNotDefined < StandardError
  def initialize controller
    super "Action #{controller} is not defined."
  end
end
