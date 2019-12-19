#!/bin/bash
range=$1
# range strings:
# 10_minutes
# 1_minute
# annual
# daily
# hourly
# monthly
# multi_annual
# subdaily

case "$range" in
"10_minutes")
  ;;
"1_minute")
  ;;
"annual")
  ;;
"daily")
  ;;
"hourly")
  ;;
"monthly")
  ;;
"multi_annual")
  ;;
"subdaily")
  ;;
*)
  ;;
esac
