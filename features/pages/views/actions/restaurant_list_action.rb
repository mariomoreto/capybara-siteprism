module Order
  module RestauranListAction
    def selectRestaurant(restaurant:)
        wait_until_restaurant_names_visible
        restaurant_names.select{|res| res.text.downcase.include? restaurant.downcase }.first
    end
  end
end