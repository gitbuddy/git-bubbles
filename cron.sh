#!/bin/bash
find /var/www/public -type f -mmin +10 -exec rm {} \;