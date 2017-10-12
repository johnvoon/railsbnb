class Listing < ApplicationRecord
  include ImageUploader::Attachment.new(:image) # adds an `image` virtual attribute
  validates :title, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :country_code, presence: true
  validates :country, presence: {
    message: ->(listing, _data) { "No country for code: #{listing.country_code}" }
  }
  validates :bed_count, numericality: { greater_than: 0 }
  geocoded_by :full_address
  after_validation :geocode

  def country
    ISO3166::Country.new(country_code.upcase)
  end

  def full_address
    return nil if country.nil?
    [street_address, city, country.name].join(', ')
  end

  def night_fee
    Money.new(night_fee_cents, 'AUD').format
  end

  def cleaning_fee
    Money.new(cleaning_fee_cents, 'AUD').format
  end
end
