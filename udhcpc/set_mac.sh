#!/bin/sh
ifconfig eth0 down
ifconfig eth0 hw ether 00248C99456C
ifconfig eth0 up 
