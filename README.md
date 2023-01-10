# alpha-blog

https://alpha-blog-702.herokuapp.com

If Heroku is not working, try:

```
heroku run rake db:migrate -a <your app>
```

and then


```
heroku ps:restart -a <your app>
```


because in production mode Rails will only detect schema changes during the boot phase.



Heroku missing required flag: -a

If:

	»   Error: Missing required flag:
	»     -a, --app APP  parent app used by review apps
	»   See more help with --help

Then:

1. Initialise with Git:

	git init

2. Get the app name:

	heroku apps

3. Add remote:

	heroku git:remote -a <your_app_name>

