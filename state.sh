#!/bin/bash
echo "------------------------------------------------------------------------" >>/tmp/state.log
echo "Current date and time " >>/tmp/state.log
date >>/tmp/state.log
echo "------------------------------------------------------------------------" >>/tmp/state.log
echo "Current load and users logged in" >>/tmp/state.log
w >>/tmp/state.log
echo "------------------------------------------------------------------------" >>/tmp/state.log
echo "Number of processes running on machine" >>/tmp/state.log
ps lax >>/tmp/state.log
echo "-------------------------------------------------------------------------" >>/tmp/state.log
