module Order
  class OrderView <SitePrism::Page
    include Order::OrderAction
    element :fName , 'input[placeholder="Nome"]'
    element :fEmail, 'input[placeholder="E-mail"]'
    element :fConfEmail, 'input[placeholder="Confirmação do e-mail"]'
    element :fAddress, 'input[placeholder="Endereço"]'
    element :fBNumber, 'input[placeholder="Número"]'
    element :fComplement, 'input[placeholder="Complemento"]'
    elements :formPaymentOption, 'mt-radio[formcontrolname="paymentOption"] div'

    def getMethod(method: )
      formPaymentOption.select{|val|  val.text.downcase.include? method.downcase}.first
    end
  end
end
