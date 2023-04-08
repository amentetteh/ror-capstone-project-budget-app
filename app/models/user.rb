# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :group_expenses, dependent: :destroy, foreign_key: 'user_id'
  has_many :expenses, through: :group_expenses,  dependent: :destroy
  validates :name, presence: true
end
