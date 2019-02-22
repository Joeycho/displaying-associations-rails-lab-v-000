class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist != nil
      self.artist.name
    else
      errors.add(:artist, "No artist assigned for this song")
    end
  end
end
