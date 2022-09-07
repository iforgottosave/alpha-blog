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
