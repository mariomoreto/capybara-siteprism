
module Order
  class RestaurantListView < SitePrism::Page
    set_url "/restaurants"
    include Order::RestauranListAction
    elements :restaurant_names, '.place-info-box-text'
    section :product_section, Order::ProductListSection,
            '.col-md-9.col-xs-12'
  end
end