#!/bin/bash

ansible-playbook --connection=local --limit=${HOSTNAME} --inventory-file=/vagrant/ansible/inventory.ini /vagrant/ansible/playbook.yml
