require 'posix/spawn'

module Posix

  NO_COMMAND_FOUND_MSG = 'No %s tool found, please install it and retry.'
  NO_COMMAND_FOUND_CODE = 127

  # Usage:
  # Posix.exec('commandlinetool', argument_name_1, argument_value_1, ...)
  #
  def self.exec(*arguments)
    result = POSIX::Spawn::Child.new(*arguments)
    if result.status.exitstatus == NO_COMMAND_FOUND_CODE
      raise(NO_COMMAND_FOUND_MSG % arguments.first)
    end

    error_text = result.err
    return result.out if error_text.empty?

    block_given? ? yield(result) : raise(error_text)
  end
end
