require_relative 'sequence'

module Scales
# Not sure about creating a new sequence object
# everytime you want a scale. Seems bad.
  def make_scale(pattern, starting_note, has_top_note=true)
    pattern.pop unless has_top_note
    Sequence.new(starting_note, pattern)
  end

  def octave(starting_note, has_top_note=true)
    make_scale([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], starting_note, has_top_note)
  end

  alias :chromatic :octave

  def major(starting_note, has_top_note=true)
    make_scale([2, 2, 2, 1, 2, 2, 2, 1], starting_note, has_top_note)
  end

  def minor_natural(starting_note, has_top_note=true)
    make_scale([2, 1, 2, 2, 1, 2, 2], starting_note, has_top_note)
  end

  def minor_harmonic(starting_note, has_top_note=true)
    make_scale([2, 1, 2, 2, 1, 3, 1], starting_note, has_top_note)
  end

end