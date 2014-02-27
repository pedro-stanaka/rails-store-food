# encoding: utf-8

%w(Dermatológica Alimentar Respiratória).each do |at|
	AllergyType.create(name: at)
end

%w(PAC SEDEX SEDEX/PAC).each do |sending|
	SendType.create(name: sending)
end

['Alimentos', 'Limpeza', 'Cosméticos', 'Capas Anti-ácaro', 
	'Espaçador', 'Equipamento', 'Diversos'].each do |prod_tp|
		Category.create(name: prod_tp)
end


['Sem Glúten', 'Sem Leite', 'Sem Ovo', 'Sem Soja', 'Sem Açúcar'].each do |itp|
	IntoleranceType.create(name: itp)
end

cat_food = Category.where(:name => 'Alimentos')

%w(Biscoitos Macarrão Farinhas Especiais Salgados Congelados Chocolates Bebidas Outros Bolos).each do |scf|
	SubCategory.create({name: scf, category_id: cat_food})
end


cat_cleaning = Category.where(:name => 'Limpeza')

%w(Luva Acaricida Fungicida Biolimpeza).each do |cleaning|
	SubCategory.create({name: cleaning, category_id: cat_cleaning})
end

cat_cases = Category.where(:name => "Capas Anti-ácaro")
%w(Colchão Travesseiro).each do |scc|
	SubCategory.create({name: scc, category_id: cat_cases})
end