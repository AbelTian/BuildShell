#!/usr/bin/env bash

mm set env cur 'qt'
#do command in this env
mm exec build
mm exec 'ls -l'
mm exec 'java -version'

#no need to reset
