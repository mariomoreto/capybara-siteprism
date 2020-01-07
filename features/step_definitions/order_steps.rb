Given("I visit the restaurant list") do
  @resPage = Order::RestaurantListView.new
  @resPage.load
end

Given("I add a product") do
  @resPage.selectRestaurant(restaurant: "Coffee Corner").click
  @resPage.product_section.addProduct(product: "Super Espreso")
  click_link 'Fechar Pedido'
end

When("I confirm my order") do
  orderPage = Order::OrderView.new
  orderPage.fillInformations
  orderPage.selectMethodPayment(method: "Cartão de Débito")
  click_button 'Finalizar Pedido'
end

Then("the site finalized my order") do
  orderSummaryView = Order::OrderSummaryView.new
  expect(orderSummaryView.sMessage.text).to eql "Pedido Conluído"
end