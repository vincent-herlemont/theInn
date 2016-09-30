# Tips

## Add vhost :

You need to take the *path file* to site-available of the container not your host !

example: 
```bash
cd ... to your sites-enabled on your host.

pwd
## Response of your real path
# /home/ubuntu/theinn/example/project-1/front/etc/nginx/sites-enabled

# Create your symbolic link
ln -s /etc/nginx/sites-available/app app
```