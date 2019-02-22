Product.create!(
    name: 'Potato'
)
Product.create!(
    name: 'Sinuca'
)
Product.create!(
    name: 'Cerveja'
)

10.times do
    Order.create!(
        products: Product.all
    )
end
