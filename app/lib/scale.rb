require './note.rb'

class Octave
  include Enumerable

  attr_reader :samples

  def initialize(starting_note)
    r = 2**(1.0/12.0)
    starting_freq = starting_note.frequency
    @octave = []
    13.times do |i|
      @octave << Note.new(starting_freq * r ** i)
    end
  end

  def each
    @octave.each do |note|
      yield note
    end
  end

  def note(index)
    @octave[index]
  end

  def notes(top = false)
    top ? @octave : @octave[0, 12]
  end

  def chromatic_scale(top = true)
    top ? make_scale([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) : make_scale([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
  end

  def major_scale(top = true)
    top ? make_scale([2, 2, 1, 2, 2, 2, 1, 2]) : make_scale([2, 2, 1, 2, 2, 2, 1])
  end

  def minor_scale(top = true)
    top ? make_scale([2, 1, 2, 2, 1, 2, 2, 2]) : make_scale([2, 1, 2, 2, 1, 2, 2])
  end

  def make_scale(pattern)
    scale = []
    current_note_index = 0
    pattern.each do |interval|
      scale << @octave[current_note_index]
      current_note_index += interval
    end
    scale
  end

end