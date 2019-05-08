# Welcome to Sonic Pi v3.1
use_bpm(96)

chord_1 = [:Db5, :Ab4, :Db4]
chord_2 = [:E5, :Ab4, :Db4]
chord_3 = [:Db5, :Ab4, :Db4]
chord_4 = [:Db5, :A4, :Gb3]
chord_5 = [:E5, :A4, :Gb3]
chord_6 = [:Db5, :A4, :Gb4]
chord_7 = [:Db5, :A4, :A3]
chord_8 = [:E5, :A4, :A3]
chord_9 = [:Db5, :A4, :A3]
chord_10 = [:Eb5, :Gb4, :B3]
chord_11 = [:Db5, :Gb4, :B3]
chord_12 = [:B4, :Gb4, :B3]

def play_chords(chords)
  play(chords[0])
  sleep 0.75
  play(chords[1])
  sleep 0.75
  play(chords[2])
  sleep 0.5
end

live_loop :melody do
  play_chords([chord_1, chord_2, chord_3])
  play_chords([chord_4, chord_5, chord_6])
  play_chords([chord_7, chord_8, chord_9])
  play_chords([chord_10, chord_11, chord_12])
end



##| sleep 8
##| live_loop :beat do
##|   sample :bd_808, amp: 6
##|   sleep 0.75

##|   sample :bd_808, amp: 6
##|   sleep 0.70

##|   sample :perc_snap, amp: 1.5
##|   sleep 0.05

##|   sample :drum_snare_soft, amp: 1.2
##|   sleep 0.5
##| end


sleep 8

live_loop :hihats do
  sleep 0.25
  sample :drum_cymbal_soft, amp: 0.6
  sleep 0.25
  sample :drum_cymbal_pedal, amp: 0.6
end




##| sleep 4

##| live_loop :drums do
##|   sample :bd_808, amp:80
##|   sleep 1
##| end






##| def first_chord

##|   play(73)
##|   play(68)
##|   play(61)

##|   sleep(1)
##| end


##| def second_chord
##|   notes = [76, 68, 61]

##|   play(notes)

##|   sleep 1
##| end

##| loop do
##|   first_chord
##|   second_chord
##| end

##| sleep 4

##| use_synth :piano
##| play(80)

##| loop do
##|   sample(:bd_808, amp:5)
##|   sleep 1
##| end

##| play(90)



