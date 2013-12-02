class Order < ActiveRecord::Base
  def as_json(opts = {})
    super(:only => [:name, :paid, :email])
  end
end
