
playerSc, computerSc = 0, 0

for i in 1 .. 3
    game = [:ROCK, :PAPER, :SCISSORS]
    print "Runde #{i}: Dein Zug ([r]rock, [p]aper, [s]cissors)? "
    decision = gets.chomp
    player = case decision
        when "r" then :ROCK
        when "p" then :PAPER
        else :SCISSORS
    end

    computer = game[ rand(3) ]

    if  (player == computer)
        print "Unentschieden "
    elsif (player == :PAPER && computer == :ROCK) || (player == :SCISSORS && computer == :PAPER) || (player == :ROCK && computer == :SCISSORS)
        print "Du hast gewonnen "; playerSc += 1
    else 
        print "Der Computer hat gewonnen "; computerSc += 1
    end

    print  "- Du: #{player}, Computer: #{computer} - [#{playerSc}:#{computerSc}]\n\n"
end

print "Ergebnis - Du #{playerSc} Punkt(e), Computer #{computerSc} Punkt(e)\n"

