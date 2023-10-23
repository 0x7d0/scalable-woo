
# Use the official WordPress image as the base image
FROM wordpress:latest

# Install WooCommerce plugin
RUN apt-get update     && apt-get install -y wget unzip     && wget https://downloads.wordpress.org/plugin/woocommerce.latest-stable.zip     && unzip woocommerce.latest-stable.zip -d /usr/src/wordpress/wp-content/plugins/     && apt-get remove -y wget unzip     && apt-get autoremove -y     && rm -rf /var/lib/apt/lists/* /woocommerce.latest-stable.zip
