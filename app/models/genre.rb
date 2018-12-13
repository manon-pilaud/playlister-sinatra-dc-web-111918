require_relative './concerns/slugifiable.rb'

class Genre < ActiveRecord::Base

  has_many :songs, through: :song_genres
  has_many :artists, through: :songs
  has_many :song_genres


  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods





  # def slug
  #   self.name.downcase.strip.gsub(" ", "-").gsub(/[^\w-]/, ‘’)
  # end
  #
  # def self.find_by_slug(slug)
  #   Genre.all.find do |genre|
  #     genre.slug == slug
  #   end
  # end


end
