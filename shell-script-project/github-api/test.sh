#!/bin/bash
set -exo pipefail
echo $#
function set_name {
   local name="akshay"
   echo $name
  echo "my name is ${name}"
   echo $name
  
}

function get_name {
  
  local name="akshay reddy"
  echo $name
  set_name "$name" 
}

get_name
