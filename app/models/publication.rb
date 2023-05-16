# frozen_string_literal: true

class Publication < ApplicationRecord
  has_one_attached :file

  enum category: {
    training_materials:   'Training materials',
    mentor_materials:     'Materials for the mentor',
    tutor_materials:      'Materials for tutor',
    menti_materials:      'Materials for the menti',
    tuti_materials:       'Materials for the tutor',
    science_publications: 'Science Publication'
  }
end
