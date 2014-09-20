require 'wavefile'

class MusicFile

  def initialize(filename, notes, sample_rate)
    @filename = filename

    samples = notes.map { |note| note.samples }.flatten
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