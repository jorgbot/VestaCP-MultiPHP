#!/bin/bash
# Adding php wrapper
user="$1"
domain="$2"
ip="$3"
home_dir="$4"
docroot="$5"

wrapper_script='#!/usr/local/php/php55/bin/php-cgi -c/usr/local/php/php55/etc/php.ini'
wrapper_file="/home/$user/web/$domain/cgi-bin/php"

echo "$wrapper_script" > $wrapper_file
chown $user:$user $wrapper_file
chmod -f 751 $wrapper_file

exit 0

