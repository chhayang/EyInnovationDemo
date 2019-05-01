#!/bin/sh

## login to server
oc login -u developer -p developer 
## --server https://172.17.0.43:8443 --insecure-skip-tls-verify
## create project 

oc new-project innovationdemo

## Create App within project

oc new-app https://github.com/chhayang/InnovationDemo.git --strategy=docker
sleep 30s

## check build logs

oc logs -f bc/innovationdemo &&

## check build status

oc status

## expose service

oc expose service innovationdemo

## url 

oc get route

##
