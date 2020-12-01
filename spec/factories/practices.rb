FactoryBot.define do
  factory :practiceA, class: "Practice" do
    alphabet_id { 1 }
    name { "apple" }
    image { "apple.png" }
    sound { "apple.mp3" }
  end
  factory :practiceB, class: "Practice" do
    alphabet_id { 2 }
    name { "baseball" }
    image { "baseball.png" }
    sound { "baseball.mp3" }
  end
end
