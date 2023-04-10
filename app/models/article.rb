# frozen_string_literal: true

class Article < ApplicationRecord
  enum category: {
    announcement:        'Announcement',
    press_release:       'Press Release',
    information_message: 'Information Message'
  }
end
