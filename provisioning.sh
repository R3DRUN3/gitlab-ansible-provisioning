printf "\n[INSTALLING ANSIBLE GALAXY ROLES]\n"
ansible-galaxy install -r requirements.yml
printf "\n[STARTING PROVISIONING]\n"
vagrant up