$new_bank_rate_percent = 2.50
$new_bank_name = 'The Royal Bank of Sealand'

def compound_interest(principal, rate_percent, years)
  principal * (1 + (rate_percent / 100)) ** years
end

get '/' do
  erb :index
end

post '/' do
  nil
end

post '/compare' do
  @current_principal = params[:current_principal].to_i
  @current_rate_percent = params[:current_rate_percent].to_f
  @years = params[:years].to_i

  @current_bank_principal = Currency::Money(compound_interest(@current_principal, @current_rate_percent, @years), :USD)
  @new_bank_principal = Currency::Money(compound_interest(@current_principal, $new_bank_rate_percent, @years), :USD)

  @difference = @new_bank_principal - @current_bank_principal

  erb :result
end

get '/instructions' do
  erb :instructions
end