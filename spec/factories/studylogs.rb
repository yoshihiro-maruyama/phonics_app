FactoryBot.define do
  factory :studylog do
    user { :owner }
    log { 1 }
    start_time { Time.zone.now }
  end
end
