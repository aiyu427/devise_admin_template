class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable

  validate :rule_confirmed_valid?
  validates :nickname, presence: true, uniqueness: true, length: {maximum: 30 }

  def password_match?
    self.errors[:password] << t('errors.blank') if password.blank?
    self.errors[:password_confirmation] << t('errors.blank') if password_confirmation.blank?
    self.errors[:password_confirmation] << t('errors.confirmation', attribute: t('activerecord.attributes.user.password')) if password != password_confirmation
    password == password_confirmation && !password.blank?
  end

  private
    def rule_confirmed_valid?
      errors.add(:rule_confirmed, '利用規約に同意して頂けない場合は、登録できません。') unless rule_confirmed == true
    end

end
