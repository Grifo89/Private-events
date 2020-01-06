class Invitation < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :event, class_name: 'Event', foreign_key: 'event_id'
  belongs_to :invited_user, class_name: 'User', foreign_key 'receiver_id'
end
