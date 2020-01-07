module Order
  
  class ProductListSection< SitePrism::Section
    include Order::ProductListAction
    elements :product_list, '.menu-item-info-box'
    
    def selectProduct(product: ) 
       product_list.select{|prod| prod.text.downcase.include? product.downcase}.first
    end
  end
end