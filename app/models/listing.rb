class Listing < ApplicationRecord
  include ImageUploader::Attachment.new(:image) # adds an `image` virtual attribute

  geocoded_by :full_address
  after_validation :geocode

  def country
    ISO3166::Country.new(country_code.upcase)
  end

  def full_address
    [street_address, city, country.name].join(', ')
  end

  def night_fee
    Money.new(night_fee_cents, 'AUD').format
  end

  def cleaning_fee
    Money.new(cleaning_fee_cents, 'AUD').format
  end
end
