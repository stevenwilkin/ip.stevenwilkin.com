# ip.stevenwilkin.com

Minimal Rack app to display your external IP address in the style of [whatismyip.com](http://whatismyip.com)

## Running

Run the app on localhost port 3000 with the following:

	rackup ./config.ru -p 3000

Browse to [http://0.0.0.0:3000](http://0.0.0.0:3000)

## Sample Apache VirtualHost config for mod_rails

To host the app using Apache and Phusion Passenger use something like:

	<VirtualHost *:80>
		ServerName ip.stevenwilkin.com
		DocumentRoot /var/www/ip.stevenwilkin.com/public
	</VirtualHost>

Where the contents of the repo have been deployed to `/var/www/ip.stevenwilkin.com`
