class Edit < ActiveRecord::Base
  belongs_to :by, polymorphic: true
  belongs_to :item, polymorphic: true

  enum action: {a_unkown: 0, a_show: 1, a_create: 2, a_update: 3, a_destroy: 3}
end
