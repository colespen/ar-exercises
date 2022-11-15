class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {greater_than: 40, less_than: 200}
  validates :store, presence: true
  before_save :set_password

  private
    def set_password
      self.password = [*'a'..'z', *0..9, *'A'..'Z'].shuffle[0..7].join
    end
end
