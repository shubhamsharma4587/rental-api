class User < ApplicationRecord
  before_save :downcase_fields

  validates :email, format:  { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}, presence: true, uniqueness: true

  def downcase_fields
    self.email = self.email.downcase
    self.name = self.name.downcase
  end

  def self.generate_user_id
    loop do
      random_id = rand(1e5...1e6).to_i.to_s
      break random_id unless User.exists?(user_id: random_id)
    end
  end
end
