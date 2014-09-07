#!/bin/bash

ansible-playbook --verbose --connection=local --limit=${HOSTNAME} --inventory-file=/vagrant/ansible/inventory.ini /vagrant/ansible/playbook.yml
