# frozen_string_literal: true

class Group < ApplicationRecord
  has_many :group_expenses, dependent: :destroy
  has_many :expenses, through: :group_expenses
  belongs_to :user

  has_one_attached :icon

  validates :name, presence: true
end
