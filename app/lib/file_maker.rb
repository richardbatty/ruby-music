class MusicFile

  def initialize(filename, samples, sample_rate)
    @filename = filename

    format = WaveFile::Format.new :mono, :pcm_16, sample_rate
    buffer_format = WaveFile::Format.new :mono, :float, sample_rate
    WaveFile::Writer.new filename, format do |writer|
      buffer = WaveFile::Buffer.new samples, buffer_format
      writer.write buffer
    end
  end

  def play
    `afplay #{@filename}`
  end

end