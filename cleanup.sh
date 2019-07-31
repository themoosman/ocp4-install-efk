#!/bin/bash

oc delete ClusterLogging instance -n openshift-logging && \
oc delete Role prometheus-k8s -n openshift-operators-redhat && \
oc delete Subscription elasticsearch-operator -n openshift-operators-redhat && \
oc delete Subscription cluster-logging -n openshift-logging && \
oc delete csc installed-community-openshift-logging -n openshift-marketplace && \
oc delete csc elasticsearch -n openshift-marketplace && \
oc delete og openshift-operators-redhat -n openshift-operators-redhat && \
oc delete og openshift-logging-ogog -n openshift-logging && \
oc delete deployment cluster-logging-eventrouter -n openshift-logging && \
oc delete configmap cluster-logging-eventrouter -n openshift-logging &&m \
oc delete clusterrolebinding event-reader-binding -n openshift-logging &\
oc delete clusterrole event-reader && \
oc delete sa cluster-logging-eventrouter -n openshift-logging && \
oc delete namespace openshift-operators-redhat && \
oc delete namespace openshift-logging
