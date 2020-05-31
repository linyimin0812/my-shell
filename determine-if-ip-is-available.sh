#!/bin/bash

ping -c 3 192.168.110.146 > /dev/null 2>&1 && echo "available" || echo "not available!"