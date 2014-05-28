class UserInfo < ActiveRecord::Base
  extend Enumerize

  belongs_to :user

  enumerize :sex, in: {male: 0, female: 1}

  validates :lastname_kana, on: :update, presence: true
end
