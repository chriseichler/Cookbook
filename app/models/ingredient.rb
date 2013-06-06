# == Schema Information
#
# Table name: ingredients
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  measurement :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Ingredient < ActiveRecord::Base
  attr_accessible :measurement, :name, :recipe_ids

  has_and_belongs_to_many :recipes
  has_many :cookbooks, through: :recipes

end
