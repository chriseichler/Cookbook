# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  instructions :text
#  name         :string(255)
#  serving_size :integer
#  image_url    :text
#  course       :integer
#  cook_time    :text
#  cookbook_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Recipe < ActiveRecord::Base
  attr_accessible :cook_time, :course, :image_url, :instructions, :name, :serving_size, :cookbook_id

  belongs_to :cookbook, inverse_of: :recipes
  has_and_belongs_to_many :ingredients
  # validates :serving_size, :numericality => { :greater_than "0" }
  # validates :cook_time, :numericality => { :greater_than "0" }



end
