require 'rubygems'
require 'bundler/setup'

require_relative 'file_maker'
require_relative 'note'
require_relative 'scales'

include Scales

files_dir = File.expand_path('../../music_files', __FILE__)

# a_octave = Scales.octave(Note.new(440))
a_minor_natural = Scales.minor_natural(Note.new(440))
a_minor_harmonic = Scales.minor_harmonic(Note.new(440))


# scale_file = MusicFile.new("#{files_dir}/scale.wav", a_octave, 22050.to_f)
# scale_file.play


# Make sequence plus operator. And think about why it's hard.
scale_file = MusicFile.new("#{files_dir}/major_scale.wav", a_minor_natural, 22050.to_f)
scale_file.play

other_scale_file = MusicFile.new("#{files_dir}/major_scale.wav", a_minor_harmonic, 22050.to_f)
other_scale_file.play

# notes_file = MusicFile.new('notes.wav', a_octave.major_scale.flatten + a_octave.minor_scale.flatten, 22050.to_f)
# notes_file.play

