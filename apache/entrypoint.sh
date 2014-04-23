#!/bin/bash

/usr/sbin/sshd -D $@
service apache2 start
