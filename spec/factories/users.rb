FactoryBot.define do
  factory :user, aliases: [:owner] do
    name { "Aaron" }
    password_digest { "foobar" }
  end
  factory :other_user, class: "User", aliases: [:other_owner] do
    name { "john" }
    password_digest { "foobar" }
  end
end
