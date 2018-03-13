module Toyable
  extend ActiveSupport::Concern

  included do
    has_many :toys, as: :toyable
    has_many :owners, through: :toyable
  end

  def receive_toy(name)

  end
end
