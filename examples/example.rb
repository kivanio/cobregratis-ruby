$: << File.expand_path('../../lib', __FILE__)
require 'cobregratis'
require 'pp'

# Cobregratis::Base.site = 'http://staging.cobregratis.com.br'
# Cobregratis::Base.site = 'http://localhost:5000'
Cobregratis::Base.user = 'token'
Cobregratis::Base.include_root_in_json = true

Cobregratis::Base.password = 'X'
Cobregratis::Base.format = :json

@bank_billet = Cobregratis::BankBillet.create({
  :amount => 33.50,
  :expire_at => '2015-07-30',
  :name => 'Cliente 1a',
})
puts @bank_billet.inspect

# @bank_billets = Cobregratis::BankBillet.find(:all)

# @bank_billets.each do |bank_billet|
  # puts "Nosso Número: #{bank_billet.our_number}\n";
  # puts "Vencimento: #{bank_billet.expire_at}\n";
  # puts "Valor: #{bank_billet.amount}\n";
  # puts "Sacado: #{bank_billet.name}\n";
  # puts "URL: #{bank_billet.external_link}\n";
  # puts "=================================\n";
# end