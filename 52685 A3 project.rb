use_bpm 120

# Define a simple melody
melody = [:C4, :E4, :G4, :C5, :G4, :E4, :C4]

# Play the melody
live_loop :melody do
  melody.each do |note|
    play note
    sleep 0.5
  end
end

# Define drum beats
live_loop :drums do
  sample :drum_bass_hard, amp: 2
  sleep 1
  sample :drum_snare_hard, amp: 1
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.5
end

# Define electric guitar
live_loop :guitar do
  with_fx :distortion, mix: 0.2 do
    with_fx :reverb, room: 0.5, mix: 0.5 do
      synth :pluck, note: :E3, release: 2, cutoff: 80
      sleep 2
    end
  end
end