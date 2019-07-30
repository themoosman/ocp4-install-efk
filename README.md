# EFK Operator Install

This automation will install EFK stack in OpenShift 4.x per (https://docs.openshift.com/container-platform/4.1/logging/efk-logging-deploying.html#efk-logging-deploy-subscription_efk-logging-deploying).

## Prerequisites
* An OpenShift 4 cluster (tested on OCP 4.1.x)
* k8s Ansible Module (https://docs.ansible.com/ansible/latest/modules/k8s_module.html)

## Setup

### Install git and clone the code
```bash
sudo yum install git

git clone https://github.com/themoosman/ocp4-install-efk
```

### Run the install_efk.yaml playbook
```bash
cd ocp4-install-efk
ansible-playbook install_efk.yaml
```


## Cleanup
### Run the install_efk.yaml playbook
```bash
oc delete ClusterLogging instance -n openshift-logging &&\
oc delete Role prometheus-k8s -n openshift-operators-redhat &&\
oc delete Subscription elasticsearch-operator -n openshift-operators-redhat &&\
oc delete Subscription cluster-logging -n openshift-logging &&\
oc delete csc installed-community-openshift-logging -n openshift-marketplace &&\
oc delete csc elasticsearch -n openshift-marketplace &&\
oc delete og openshift-operators-redhat -n openshift-operators-redhat &&\
oc delete namespace openshift-operators-redhat &&\
oc delete namespace openshift-logging

```