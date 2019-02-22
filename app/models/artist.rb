class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    if !self.songs.empty?
      self.songs.count
    else
      0
    end
  end

end
