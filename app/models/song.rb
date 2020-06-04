class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :artist_name, presence: true
  validates :release_date, presence: true
  if: released?
  validate :no_repeated_title
  validate :date_not_possible

  def no_repeated_title
    if Song.any?{ |s| s.title == title && s.artist_name == artist_name && s.release_year == release_year }
      errors.add( :title, "can't add the same song twice")
  end

  def date_not_possible
  end
end
