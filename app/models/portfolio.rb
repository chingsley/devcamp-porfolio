class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                 reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  # mount_uploader :thumb_image, PortfolioUploader
  # mount_uploader :main_image, PortfolioUploader

  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(width: '600', height: '400')
    self.thumb_image ||= Placeholder.image_generator(width: '350', height: '200')
  end
end


# EXPLAINING THE PIPE-EQUALS (||=) OPERATOR
# self.main_image ||= "https://via.placeholder.com/600x400"
# IT IS EQUIVALENT TO WRITING THE CODE BELOW
# if self.main_image == nil
#   self.main_image = "https://via.placeholder.com/600x400"
# end


