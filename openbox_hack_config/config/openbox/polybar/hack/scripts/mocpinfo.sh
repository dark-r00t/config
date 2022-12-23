#!/bin/bash

mocp -i | grep "^File:" | rev | cut -d '/' -f1 | cut -c5- | rev
