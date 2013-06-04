# == Schema Information
#
# Table name: cookbooks
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  cuisine     :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cookbook < ActiveRecord::Base
  attr_accessible :cuisine, :description, :title
end
