# frozen_string_literal: true

require 'pry-doc'

# Hit Enter to repeat last command
Pry::Commands.command(/^$/, 'repeat last command') do
  pry_instance.run_command Pry.history.to_a.last
end
