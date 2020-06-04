class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :artist_name, presence: true
  validates :release_date, presence: true
  if: released?
  validate :no_repeated_title
  validate :date_not_possible
end
