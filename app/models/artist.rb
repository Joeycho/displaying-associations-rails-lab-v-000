class Artist < ActiveRecord::Base
  has_many :songs


  private
  def song_count
    if !self.songs.empty?
      self.songs.count
    else
      0
    end
  end

end
