require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
  	@name = params[:name]
  	"#{@name.reverse}"

  end

  get '/square/:number' do
  	@number = params[:number]
  	"#{@number.to_i**2}"
  end

  get '/say/:number/:phrase' do
  	phrase = ""
  	params[:number].to_i.times do
  		phrase += params[:phrase]
  	end
  	phrase
  	# @number = params[:number].to_i
  	# @phrase = params[:phrase]

  	# erb :phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  	# result = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(" ") + "."
  	# result

  	@word1 = params[:word1]
  	@word2 = params[:word2]
  	@word3 = params[:word3]
  	@word4 = params[:word4]
  	@word5 = params[:word5]

  	"#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end

  get '/:operation/:number1/:number2' do
  	@operation = params[:operation]
  	@number_one = params[:number1].to_i
  	@number_two = params[:number2].to_i
  	@add = @number_one + @number_two
  	@subtract = @number_one - @number_two
  	@multiply = @number_one * @number_two
  	@divide = @number_one / @number_two

  	if @operation == "add"
  		"#{@add}"
  	elsif @operation == "subtract"
  		"#{@subtract}"
  	elsif @operation == "multiply"
  		"#{@multiply}"
  	elsif @operation == "divide"
  		"#{@divide}"
  	else
  		"Operation doesn't exist."
  	end
  end
end