class Rabbit < Creature
  traits :bombs
  
  life 10
  strength 2
  charisma 44
  weapon 4
  bombs 3

  def ^( enemy )
    fight( enemy, 13 )
  end
  
  def /( enemy )
    fight( enemy, rand( 4 + ( (enemy.life % 10 ) ** 2 ) ) )
  end

  def %( enemy )
    lettuce = rand( charisma )
    puts "[Healthy lettuce gives you #{ lettuce } life points !!!]"
    @life += lettuce
    fight( enemy , 0 )
  end
  
  def *( enemy )
    if @bombs.zero?
      puts "[UHN!! You're out of bombs!!]"
      return
    end
    @bombs -= 1
    fight( enemy, 86 )
  end
end
  
