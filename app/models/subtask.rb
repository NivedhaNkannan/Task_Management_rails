class Subtask < ApplicationRecord
  belongs_to :taskn

  validates :name, presence: true
  validates :priority, inclusion: { in: %w[H M L] }
end
