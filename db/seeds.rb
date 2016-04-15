# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(email: 'user1@example.com', password: 'password', password_confirmation: 'password')
user2 = User.create(email: 'user2@example.com', password: 'password', password_confirmation: 'password')
user3 = User.create(email: 'user3@example.com', password: 'password', password_confirmation: 'password')
user4 = User.create(email: 'user4@example.com', password: 'password', password_confirmation: 'password')
user5 = User.create(email: 'user5@example.com', password: 'password', password_confirmation: 'password')

thread1 = ForumThread.create(title: 'Lorem ipsum dolor sit amet.')
thread2 = ForumThread.create(title: 'Curabitur vel vulputate libero.')

Comment.create(user: user1, forum_thread: thread1, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus suscipit mollis finibus. Nam non vulputate lectus. Fusce faucibus sollicitudin blandit. Morbi non convallis tortor. Integer bibendum lobortis consectetur.')
Comment.create(user: user2, forum_thread: thread1, content: 'Fusce sem dolor, porta ut arcu sit amet, cursus volutpat lacus. Phasellus ac mi eu nisl pharetra facilisis vitae vitae nisl.')
Comment.create(user: user1, forum_thread: thread1, content: 'Pellentesque ultrices auctor erat, sit amet vehicula mauris laoreet malesuada. Donec et aliquam turpis.')
Comment.create(user: user3, forum_thread: thread1, content: 'Nullam convallis mauris sit amet porttitor aliquet. Proin at egestas felis.')
Comment.create(user: user4, forum_thread: thread2, content: 'Ut aliquet risus sed tristique sagittis. In non faucibus felis. Nam lectus mauris, vehicula ac lorem ac, ullamcorper aliquam dolor.')
Comment.create(user: user5, forum_thread: thread2, content: 'Nam vulputate justo nibh, accumsan tempus nibh hendrerit et. Praesent ut gravida nisi. Aenean nec finibus velit. Fusce ac auctor quam. Curabitur consectetur vitae quam at ultrices. Proin a fringilla turpis, vitae porta nisi. Nam tincidunt felis ipsum, et faucibus orci feugiat quis. In nec mi lorem.')
