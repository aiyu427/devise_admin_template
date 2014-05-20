class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validate :rule_confirmed_valid?

  private
    def rule_confirmed_valid?
      errors.add(:rule_confirmed, '利用規約に同意して頂けない場合は、登録できません。') unless rule_confirmed == true
    end

end
