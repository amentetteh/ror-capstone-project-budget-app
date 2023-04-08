# frozen_string_literal: true

class User < ApplicationRecord
  has_many :group_expenses, dependent: :destroy, foreign_key: 'user_id'
  has_many :expenses, through: :group_expenses,  dependent: :destroy
  validates :name, presence: true
end
