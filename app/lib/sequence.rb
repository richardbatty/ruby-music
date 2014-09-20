require_relative 'note'

class Sequence
  include Enumerable

  # All sequences are arrays of notes. They are defined by a starting note
  # and a pattern.
  def initialize(starting_note, pattern)
    r = 2**(1.0/12.0)
    starting_freq = starting_note.frequency
    @sequence = []
    interval_from_starting_note = 0
    pattern.each do |interval|
      interval_from_starting_note += interval
      @sequence << Note.new(starting_freq * r ** interval_from_starting_note)
    end
  end

  def each
    @sequence.each do |note|
      yield note
    end
  end
  
end