require 'rubygems'
require 'bundler/setup'

require 'wavefile'
require './file_maker'
require './note'
require './scale'

# note = Note.new
# puts note.samples
# puts note.sample_rate
octave = Octave.new
# file = MusicFile.new('a.wav', note.samples, note.sample_rate)
# file.play
# puts scale.samples
# scale_file = MusicFile.new('scale.wav', scale.samples, 22050.to_f)
# scale_file.play

notes_file = MusicFile.new('notes.wav', octave.major_scale.flatten + octave.minor_scale.flatten, 22050.to_f)
notes_file.play

