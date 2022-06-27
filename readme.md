# Gitlab provisioning with Vagrant and Ansible
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)


Spin up a Gitlab test instance with vagrant and Ansible 👷🔧👷 

## Abstract
Gitlab is a DevOps software package that combines the ability to develop, secure, and operate software in a single application. 
<br>
The open source software project was created by Ukrainian developer Dmitriy Zaporozhets and Dutch developer Sytse Sijbrandij.

This repository contains IaC scripts for provisioning a local Gitlab instance via Vagrant and Ansible.

## Instructions
clone this repo:
```console
git clone https://github.com/R3DRUN3/gitlab-ansible-provisioning.git \
&& cd gitlab-ansible-provisioning
```
fire up the provisioning:
```console
sh provisioning.sh
```
when finished, open a browser to access the Gitlab web UI and follow the instructions for configuration:
```console
firefox https://192.168.56.11/users/sign_in
```
The default password is randomly generated an it can be found on the target host.
Log into the machine with the following command:
```console
vagrant ssh gitlab
```
open the password file and retrieve credentials:
```console
sudo nano /etc/gitlab/initial_root_password
```
That is it!
Now you can start experimenting with your brand new on-prem Gitlab instance!

![alt_text](https://github.com/R3DRUN3/gitlab-ansible-provisioning/blob/main/images/gitlab.png)
