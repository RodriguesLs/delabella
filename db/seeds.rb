p 'Criando produtos'
Product.create!(
    name: 'Potato',
    price: "#{Random.rand(23)}.#{Random.rand(99)}"
)
Product.create!(
    name: 'Sinuca',
    price: "#{Random.rand(23)}.#{Random.rand(99)}"
)
Product.create!(
    name: 'Cerveja',
    price: "#{Random.rand(23)}.#{Random.rand(99)}"
)

p 'Produtos criados'

Cliente.create!(
    email: 'lies@lies',
    password: '190195',
    cpf: '426.442.538-70'
)
Cliente.create!(
    email: 'pedro@pedro',
    password: '190195',
    cpf: '121.235.948-81'
)
Cliente.create!(
    email: 'kaka@kaka',
    password: '190195',
    cpf: '205.605.457-15'
)

Admin.create!(
    email: 'admin@admin',
    password: '190195'
)

10.times do
    Order.create!(
    products: Product.all,
    cliente_id: Cliente.all.sample.id
    )
end