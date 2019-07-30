# Variables

Variable Name | Default | Notes
--- | --- | ---
verify_cluster_ssl | no | Disable SSL validation
channel | preview | Currently hardcoded
csv | elasticsearch-operator.4.1.4-201906271212 | Currently hardcoded
clv | clusterlogging.4.1.4-201906271212 | Currently hardcoded
es_node_count | 1 | Number of Elasticsearch Nodes
es_disk_size | 200G | Size of Elasticsearch data PV
es_storageclass | gp2 | StorageClass to use for PVs
es_redundancy | ZeroRedundancy | Type of Elasticsearch redundancy
es_cpu_limit | 1 | Default CPU Limit
es_cpu_request | 1 | Default CPU Request
es_memory_limit | 4Gi | Downsized Memory Limit (default 16Gi)
es_memory_request | 4Gi | Downsized Memory Request (default 16Gi)
es_instance_ram | 4Gi | Downsized Memory  (default 16Gi)
kibana_replicas | 1 | Number of Kibana replicas
