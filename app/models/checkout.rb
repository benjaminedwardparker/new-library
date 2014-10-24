class Checkout < ActiveRecord::Base
  belongs_to :book
  belongs_to :patron

  def checked_out?
    checked_in_at.nil?
  end
end
