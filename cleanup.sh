#!/bin/bash

oc delete ClusterLogging instance -n openshift-logging && \
oc delete Role prometheus-k8s -n openshift-operators-redhat && \
oc delete Subscription elasticsearch-operator -n openshift-operators-redhat && \
oc delete Subscription cluster-logging -n openshift-logging && \
oc delete csc installed-community-openshift-logging -n openshift-marketplace && \
oc delete csc elasticsearch -n openshift-marketplace && \
oc delete og openshift-operators-redhat -n openshift-operators-redhat && \
oc delete og openshift-logging-ogog -n opensift-logging && \
oc delete namespace openshift-operators-redhat && \
oc delete namespace openshift-logging
