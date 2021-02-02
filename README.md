# Payments

Register your payments and create a charts to get information
about your daily payments.

## Cloning

To clone see this steps:

```sh
git clone https://github.com/AlphaTechnolog/payments.git pays
sudo mv pays /opt/lampp/htdocs
sudo chmod -R 777 /opt/lampp/htdocs/pays
sudo chmod -R 777 /opt/lampp/htdocs/pays/*
```

Now execute this:

```sh
# If you did'nt installed lampp in your path see this:
cd /opt/lampp
sudo install lampp /usr/bin
# Now run the service
cd ~
sudo lampp start
```

## Using in web browser

Now go to [http://localhost/pays](https://localhost/pays)

## Changing url

If you want to change gthe url see this... The url
for this example is: `payments`.

### Changing physical url

```sh
cd /opt/lampp/htdocs
sudo mv pays payments
```

### Changing config

```sh
cd /opt/lampp/htdocs/payments
cd application/config
nano config.php
```

Search this line:

```php
$config['base_url'] = 'http://localhost/pays';
```

Replace to:

```php
$config['base_url'] = 'http://localhost/payments';
```

### Showing in browser

Now go to [http://localhost/payments](https://localhost/payments)
