5.times do |i|
  user = User.create(name: "ユーザー#{i + 1}")
  (i + 1).times do |j|
    user.posts.create(title: "投稿#{j + 1}（ユーザー#{i + 1}）")
  end
end