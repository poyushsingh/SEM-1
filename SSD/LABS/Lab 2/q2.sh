#!/bin/bash

grep ^/usr /etc/shells | awk -F[/] '{ print $(NF)  '\n'}'
