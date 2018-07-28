class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
  validates :name, presence: true
  belongs_to :user

  def self.save_from_yaml
    yaml = YAML.load(yaml_path)
    project = self.new
    project.name = yaml['name']

    user.save!
  end

end
