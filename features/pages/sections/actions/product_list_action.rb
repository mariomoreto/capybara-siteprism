module Order
  module ProductListAction
    def addProduct(product: )
      selectProduct(product: product).find('.add-to-cart').click
    end
  end
end 