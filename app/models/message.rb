class Message < ActiveRecord::Base
  has_many :message_recipients
  has_many :users, through: :message_recipients
end
