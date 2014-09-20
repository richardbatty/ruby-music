# require_relative 'note'
# require_relative 'sequence'

# class Octave < Sequence
#   # include Enumerable

#   def initialize(starting_note, pattern=[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
#     super
#   end

#   def note(index)
#     @sequence[index]
#   end

#   def notes(top = false)
#     top ? @sequence : @sequence[0, 12]
#   end

# end