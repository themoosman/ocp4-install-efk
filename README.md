# EFK Operator Install

This automation will install EFK stack in OpenShift 4.x per (https://docs.openshift.com/container-platform/4.1/logging/efk-logging-deploying.html#efk-logging-deploy-subscription_efk-logging-deploying).

## Prerequisites
* An OpenShift 4 cluster (tested on OCP 4.1.8)
* k8s Ansible Module (https://docs.ansible.com/ansible/latest/modules/k8s_module.html)

## Setup

### Install git and clone the code
```bash
git clone https://github.com/themoosman/ocp4-install-efk
```

### Export the path to the k8s config file.
This is what the k8s Ansible module will use to authenticate to OpenShift.
```bash
#Update as necessary
export KUBECONFIG=/home/themoosman/.kube/config
```

### Run the install_efk.yaml playbook
```bash
#Update as necessary
export KUBECONFIG=/home/.kube/config
cd ocp4-install-efk
ansible-playbook install_efk.yaml
```

## Cleanup
### Run the cleanup script.
```bash
./cleanup.sh
```

## TODO
Current the following variables are hardcoded and need to be made dynamic.

* `channel` - use `oc get packagemanifest elasticsearch-operator -n openshift-marketplace -o jsonpath='{.status.channels[].name}'` to get the value.
* `csv` - use `oc get packagemanifest elasticsearch-operator -n openshift-marketplace -o jsonpath='{.status.channels[].currentCSV}'` to get the value.
* `clv` - use `oc get packagemanifest cluster-logging -n openshift-marketplace -o jsonpath='{.status.channels[].currentCSV}'` to get the value.
