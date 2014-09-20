require 'rubygems'
require 'bundler/setup'

require 'wavefile'
require './file_maker'
require './note'
require './scale'

a_octave = Octave.new(Note.new(440))

scale_file = MusicFile.new('../music_files/scale.wav', a_octave, 22050.to_f)
scale_file.play

major_scale_file = MusicFile.new('../music_files/major_scale.wav', a_octave.major_scale, 22050.to_f)
major_scale_file.play

# notes_file = MusicFile.new('notes.wav', a_octave.major_scale.flatten + a_octave.minor_scale.flatten, 22050.to_f)
# notes_file.play

