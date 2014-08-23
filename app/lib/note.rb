class Note

  attr_reader :samples, :sample_rate, :frequency

  def initialize(frequency = 440, duration = 1.0)
    @frequency   = frequency.to_f
    @duration    = duration.to_f
    @sample_rate = 22050.to_f

    # we want 1 second of the note, so we need 1 second's worth of frames
    total_frames = (duration * sample_rate).to_i

    # each frame, we want this fraction of a cycle:
    cycles_per_frame = frequency / sample_rate

    # What is a cycle? A cycle is a full sine wave, which is 2π radians:
    increment = 2 * Math::PI * cycles_per_frame
    phase = 0

    @samples = total_frames.times.map do
      sample = Math.sin phase
      phase += increment
      sample
    end
  end

end