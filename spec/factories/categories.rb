# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  ancestry   :string(255)
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_categories_on_ancestry  (ancestry)
#
FactoryBot.define do
  factory :category do
    name { 'レディース' }
  end
end
