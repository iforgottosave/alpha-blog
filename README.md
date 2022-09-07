# alpha-blog

https://alpha-blog-701.herokuapp.com

2 SEPT 2022
Heroku working, commit: "Install rails_12factor"

It sounds like you may have not run your database migrations on Heroku? They are not run automatically by the default deploy process.


heroku run rake db:migrate -a <your app>


and then


heroku ps:restart -a <your app>


because in production mode Rails will only detect schema changes during the boot phase.
