require 'faker'

module Order
  module OrderAction
    def fillInformations
      email = Faker::Internet.email
      fName.set Faker::Name.name
      fEmail.set email
      fConfEmail.set email
      fAddress.set Faker::Address.street_address
      fBNumber.set Faker::Address.building_number
      fComplement.set Faker::Address.community
    end

    def selectMethodPayment(method: )
      getMethod(method: method).find('div').click
    end
  end
end
