class Song < ApplicationRecord
  belongs_to :key
  belongs_to :instrument
  belongs_to :style

  # app/models/song.rb

def generate_chord_progression
  # Logique pour générer une progression d'accords basée sur la clé et le style
end

def create_midi_file
  # Logique pour créer un fichier MIDI à partir de la progression d'accords
end

end
