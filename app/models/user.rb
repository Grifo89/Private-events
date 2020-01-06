class User < ApplicationRecord
  has_many :events, class_name: 'Event', foreign_key: 'user_id'
  has_many :attendances
  has_many :events_as_atten, through: :attendances
  has_many :invitations, class_name: 'Invitation', foreign_key: 'sender_id'
  has_many :invitations_received, class_name: 'Invitation', foreign_key: 'receiver_id'
end
