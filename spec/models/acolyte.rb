class Acolyte
  include Mongoid::Document
  field :status
  field :name

  scope :active, where(:status => "active")

  default_scope asc(:name)

  def callback_test?
    name == "callback-test"
  end
end
