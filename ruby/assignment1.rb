# uebungen fuer assignment #1

# 1 Bedingte Zuweisung
a ||= 'leer'

# 2 Case
note = 3
ergebnis = case note
when 1
    puts 'sehr gut'
when 2
    puts 'gut'
when 3
    puts 'befriedigend'
when 4
    puts 'genuegend'
when 5, 6
    puts 'durchgefallen'
end

# 3 String-Formatierung
name, gewicht = 'Peter', '90'
puts name + ' wiegt ' + gewicht + ' kg'
puts "#{name} wiegt #{gewicht} kg"
puts "%s wiegt %s kg" % [name, gewicht]

# 4 Parallele Zuweisung
def swap (w1, w2)
    return w2, w1
end
puts swap 'Hans', 'Peter'

# 5 Ranges
(1 .. 20).each { |n| puts n }

# 6 Splat
ort = [ 49.468408, 8.482504, \
        'Hochschule Mannheim', \
        'Gebäude A', \
        'Fakultät für Informatik', \
        'Gute Ausbildung' ]
laenge, breite, name, *attribute = ort
puts laenge
puts breite
puts name
puts attribute

# 7 Symbole
def ansage(stoerung)
    case stoerung
    when :signal
        grund = 'einer Signalstoerung'
    when :personen
        grund = 'Personen im Gleis'
    when :betrieb
        grund = 'Stoerungen im Betriebsablauf'
    end
    puts "Wir bitten um Entschuldigung, wegen #{grund} verzögert sich unserer Weiterfahrt."
end

ansage(:signal)
ansage(:personen)
ansage(:betrieb)