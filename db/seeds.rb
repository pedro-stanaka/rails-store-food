# encoding: utf-8

%w(Dermatológica Alimentar Respiratória).each do |at|
	AllergyType.create(name: at)
end

%w(PAC SEDEX SEDEX/PAC).each do |sending|
	SendType.create(name: sending)
end

['Sem Glúten', 'Sem Leite', 'Sem Ovo', 'Sem Soja', 'Sem Açúcar'].each do |itp|
	IntoleranceType.create(name: itp)
end

['Alimentos', 'Limpeza', 'Cosméticos', 'Capas Anti-ácaro',
	'Espaçador', 'Equipamento', 'Diversos'].each do |prod_tp|
		Category.create(name: prod_tp)
end


cat_food = Category.find_by_name('Alimentos')

%w(Biscoitos Macarrão Farinhas Especiais Salgados Congelados Chocolates Bebidas Outros Bolos).each do |scf|
  cat_food.children.create :name => scf, :description => scf
end


cat_cleaning = Category.find_by_name('Limpeza')

%w(Luva Acaricida Fungicida Biolimpeza).each do |cleaning|
	cat_cleaning.children.create({:name => cleaning, :description => cleaning})
end

cat_cases = Category.find_by_name("Capas Anti-ácaro")
%w(Colchão Travesseiro).each do |scc|
	cat_cases.children.create({:name => scc, :description => scc})
end