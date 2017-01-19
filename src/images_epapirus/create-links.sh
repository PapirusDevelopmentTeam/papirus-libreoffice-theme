#!/bin/bash
find . -type f > links.txt
sed -i 's/\.\///g' links.txt
