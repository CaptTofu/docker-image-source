#!/bin/bash

/usr/sbin/sshd -D $@
service mysql start
