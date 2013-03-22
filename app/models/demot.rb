class Demot < ActiveRecord::Base
  attr_accessible :title, :image, :active
  belongs_to :user

validates :title, :user_id, presence: true
validates :user_id, numericality: true
validates :image, attachment_presence: true

has_attached_file :image, :styles => { :medium => "400x400>", :thumb => "100x100>" }
end
