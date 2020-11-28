FactoryBot.define do
  factory :alphabetA, class: Alphabet do
    id { 1 }
    name { "Aa" }
    sound { "Aa.mp3" }
  end
  factory :alphabetB, class: Alphabet do
    id { 2 }
    name { "Bb" }
    sound { "Bb.mp3" }
  end
end
