class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable#, :omniauthable, omniauth_providers: [:twitter]
  has_attached_file :avatar,
                     styles: { medium: '300xx300>', thumb: '100x100>' },
                     default_url: '/missing.png'

  validates_attachment_content_type :avatar,
                                    content_type: %r{¥Aimage¥/.*¥z}
  has_many :projects, dependent: :destroy
  has_many :posts, inverse_of: :user
  def created_month
    created_at.strftime('%Y年%m月')
  end
  has_many  :user_teams
  has_many  :teams, through: :user_teams
end
