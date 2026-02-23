#!/bin/bash
man bash | grep -o -E '[A-Za-z]{4,}' | sort | uniq -c | sort -n -r | head -n 3