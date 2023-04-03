# frozen_string_literal: true

require 'faker'

Partner.delete_all

def create_partner
  partner = Partner.create(
    name:           Faker::JapaneseMedia::OnePiece.character,
    en_description: Faker::JapaneseMedia::OnePiece.quote,
    ua_description: ['Чесно кажучи, моя люба, мені наплювати.',
                     'Я збираюся зробити йому пропозицію, від якої він не зможе відмовитися.',
                     'Тото, у мене таке відчуття, що ми більше не в Канзасі.',
                     'Пристебніть ремені. Буде жорстка нічка.',
                     'Нехай буде з тобою Сила!'].sample
  )
  partner.save!
end

12.times { create_partner }
