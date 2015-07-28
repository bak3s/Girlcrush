User.create!([
  {
    email: "admin@girlcrush.com.au",
    password: "adminpassword",
    password_confirmation: "adminpassword",
    reset_password_token: nil,
    reset_password_sent_at: nil,
    remember_created_at: nil,
    sign_in_count: 1,
    current_sign_in_at: "2015-02-06 14:02:10",
    last_sign_in_at: "2015-02-06 14:02:10",
    current_sign_in_ip: "127.0.0.1",
    last_sign_in_ip: "127.0.0.1"
  },
  {
    email: "user@girlcrush.com.au",
    password: "userpassword",
    password_confirmation: "userpassword",
    reset_password_token: nil,
    reset_password_sent_at: nil,
    remember_created_at: nil,
    sign_in_count: 1,
    current_sign_in_at: "2015-02-06 14:03:01",
    last_sign_in_at: "2015-02-06 14:03:01",
    current_sign_in_ip: "127.0.0.1",
    last_sign_in_ip: "127.0.0.1"
  }
])

Profile.create([
  {
    caption: "I am the admin",
    location: "Sydney",
    gender: "male",
    biography: "This is a multiline biography",
    age: "24-29",
    user_id: 1tit
  },
  {
    caption: "I am a user",
    location: "Sydney",
    gender: "female",
    biography: "This is a multiline biography",
    age: "24-29",
    user_id: 2
  }
])

Crush.create([
  {
    title: "New crush",
    description: "This is my new crush from xyz",
    crushed: 5,
    user_id: 1
  },
  {
    title: "Another crush",
    description: "This is another crush from xyz",
    crushed: 8,
    user_id: 1
  },
  {
    title: "New crush",
    description: "This is my new crush from xyz",
    crushed: 5,
    user_id: 2
  },
  {
    title: "Another crush",
    description: "This is another crush from xyz",
    crushed: 8,
    user_id: 2
  }
])

