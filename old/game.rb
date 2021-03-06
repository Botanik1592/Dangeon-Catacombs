# Оружие и его сила
@w1 = 10 # руки
@w2 = 25 # маленький ножик
@w3 = 40 # большой столовый нож

# Броня и её характеристики
@a1 = 10 # рвань
@a2 = 20 # куртка
@a3 = 30 # кольчуга

slt = 0.05

# Счетчик убитых (чтобы понимать, где монстры нам не нужны)
@kills = 0

# Чистим экран (пока как умеем) upd: теперь умеем ))
def clear_screen
	system ('clear')
	puts "======================================================================================================="
	puts
end

# Проверка имеющегося оружия
@weapon = ""
def weapon_check
	if @uron == @w1
		@weapon = "Руки"
	elsif @uron == @w2
		@weapon = "Маленький ножик"
	elsif @uron == @w3
		@weapon = "Большой столовый нож"
	end
end

# Проверка имеющейся брони
@armor = ""
def armor_check
	if @bronya == @a1
		@armor = "Рвань"
	elsif @bronya == @a2
		@armor = "Куртка"
	elsif @bronya == @a3
		@armor = "Кольчуга"
	end
end

# Табло с информацией об оружии, здоровье и броне
def info_bar
	puts
	puts "-------------------------------------------------------------------------------------------------------"
	puts "Здоровье: #{@health}   |   Оружие: #{@weapon} (урон: #{@uron})   |   Броня: #{@armor} (защита: #{@bronya})"
	puts "-------------------------------------------------------------------------------------------------------"
	puts	
end

#
#
#

# Сражение с тупым зомби
def tupoy_zombi
	mhealth = 40
	muron = 4
	marmor = 0

	nn = ""
	until nn == "ok"

	puts
	puts "ТЫ:                                    \tРАНЕНЫЙ ЗОМБИ:"
	puts 
	puts "Здоровье: #{@health}                           \tЗдоровье: #{mhealth}"
	puts "Оружие  : #{@weapon} (урон: #{@uron})          \tОружие: Одня левая рука (урон: #{muron})"
	puts "Броня   : #{@armor} (защита: #{@bronya})       \tБроня: Нет (защита: #{marmor})"
	puts "-------------------------------------------------------------------------------------------------------"
	puts
	puts "(1) - Атаковать   /   (2) - Убиться головой об стену"	
	puts

		print "Ваш выбор: "
		vybor = gets.to_i

	    clear_screen	

	    # Атакуем
	    if vybor == 1
	    	uron = @uron - marmor # Считаем наносимый урон по формуле: урон - (100/броню зумби)
	    	mhealth = mhealth - uron # Обновляем здоровье зомби
	    	povr = 0
	    	povr = muron - (@bronya/muron) # Считаем урон наносимый тебе
	    	@health = @health - povr
	    	puts "Ты атакуешь и наносиш Раненому Зомби #{uron} очков урона."
	    	puts "Раненый Зомби еле дотягивается до тебя и наносит тебе #{povr} очков урона"
	    	puts
	    	
	    	if mhealth <= 0
	    		puts "Это славная победа!"
	    		puts "Ты смотришь на то, что осталось от твоего противника и чувствуешь душевный подъем."
	    		nn = "ok"
	    		@kills = @kills + 1
	    	end

	    	if @health <= 0
	    		puts "Ты сдох."
	    		exit
	    	end

	    
	    elsif vybor == 2
			puts "Ты разбегаешься и со всей силы бьешься головой об стену."
			puts "Из-за какого-то вшивого зомби ты так тупо сдох!"
			puts "На этом ваше приключение закончилось."
			sleep 0.8
			exit
	    end
	end	

end


clear_screen

puts "#######################################################################################################"
sleep slt
puts "#                                                                                                     #"
sleep slt
puts "#    ###   ##  #   #  ###  ####  ###  #   #      ###   ##  #####  ##   ###   ###  #   # ###   ###     #"
sleep slt
puts "#    #  # #  # ##  # #     #    #   # ##  #     #   # #  #   #   #  # #   # #   # ## ## #  # #        #"
sleep slt
puts "#    #  # #  # # # # #  ## ###  #   # # # #     #     #  #   #   #  # #     #   # # # # ###   ##      #" 
sleep slt
puts "#    #  # #### #  ## #   # #    #   # #  ##     #   # ####   #   #### #   # #   # #   # #  #    #     #"
sleep slt
puts "#    ###  #  # #   #  ###  ####  ###  #   #      ###  #  #   #   #  #  ###   ###  #   # ###  ###      #"
sleep slt
puts "#                                                                                                     #"
sleep slt
puts "#######################################################################################################"
puts "                                   (c) Eldorado Software Studio"
n = 0

while n < 3
	sleep slt
	puts
	n = n + 1
end

puts "Dangeon catacombs - это текстовый квест, который перенесет вас в зловещий мир подземелий, сражений, предательства и доблести."
puts "Миллионы игроков по всему миру уже оценили великолепную графику, искрометный юмор и затягивающий геймплей этой игры."
puts "Попробуйте найти выход из мрачных подземелий, населенных упырями, зомби, монстрами и злыми волшебниками, и остаться при этом человеком."

x = " "
until x == "Y" || x == "N"
	print "Будем играть? (Y/N) : "
	x = gets.strip.upcase

	if x == 'Y'
				
	elsif x == 'N'
		exit

	else 
		puts "Некорректный ввод."
	end

end

clear_screen

puts "Вы очнулись в маленькой сырой комнате."
puts "Окружающую вас темноту еле-еле разгоняет чадящий на стене факел."
puts "Вы встаете с кучи мокрой соломы и обнаруживаете, что стены комнаты сложены из грубых неотесанных камней,"
puts "по земляному полу в избытке бегают мокрицы и сороконожки."
puts "Где-то в углу сдавленно пищит мышь."
puts "В дальней стене комнаты вы обнаруживаете грубую деревянную дверь."
puts "Вы чувствуете себя не очень хорошо. У вас болит голова. Ощупывая её вы обнаруживаете большую шишку на затылке."
puts

@health = 70
@key = 0
@uron = @w1
@bronya = @a1

def first_room
nn = ""
	until nn == "ok"

		weapon_check 	# Проверяем оружие
		armor_check		# Проверяем броню

		info_bar		# Рисуем инф табло

		puts "(1) - Оглядеться   /   (2) - Обыскать комнату   /   (3) - Выйти из комнаты   /   (4) - Убиться головой об стену"
		puts
		vybor = 0

		print "Ваш выбор: "
		vybor = gets.to_i

		clear_screen

		if vybor == 1

			puts "Окружающую вас темноту еле-еле разгоняет чадящий на стене факел."
			puts "Стены комнаты сложены из грубых неотесанных камней, по земляному полу в избытке бегают мокрицы и сороконожки."
			puts "Где-то в углу сдавленно пищит мышь."
			puts "В дальней стене комнаты вы обнаруживаете грубую деревянную дверь."
			puts 

		elsif vybor == 2
			if @key == 1

				puts "Обшарив всю комнату вы не находите ничего кроме крысиного помета и двух дохлых пауков."
			elsif @key == 0			
				puts "Обшарив всю комнату вы не находите ничего кроме крысиного помета и двух дохлых пауков."
				puts "И только в последнюю очереь вы догадываетесь поковыряться в соломе. Под кучей соломы вы находите ключ."
				puts 
				@key = 1
			end

		elsif vybor == 3 && @key == 0
			puts "Вы дергаете дверь, но она заперта."
			puts
		
		elsif vybor == 3 && @key == 1
			sleep 1
			nn = "ok"
			
		elsif vybor == 4
			puts "Вы разбегаетесь и со всей силы ударяетесь головой об стену."
			puts "Поздравляю! Ну и слабак же вы, самоубийство самый простой выход."
			puts "На этом ваше приключение закончилось."
			sleep 0.8
			exit

		else
			puts "Некорректный ввод."
			puts

		end	

	end
end

first_room

clear_screen

puts "Вы вставляете ключ в замочную скважину, с усилием проворачиваете его и дверь открывается."
puts "Вы выходите из комнаты."

def first_tunnel

	clear_screen

	puts "Вашему взору открывается широкий полутемный туннель с низким каменным потолком с которого капает вода."
	puts "Тут и там на стенах висят чадящие факелы."

	info_bar

	

end

if @kills > 0 

else
	puts "Ты даже не успеваешь толком выйти из комнаты, как сразу же на тебя, издавая душераздирающие стоны, нападает зомби,"
	puts "который прятался в стенной нише слева от двери."
	puts "Тебе ничего не остается, как сражаться с ним, или умереть!"
	puts

	tupoy_zombi

end