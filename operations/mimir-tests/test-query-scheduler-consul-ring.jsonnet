local mimir = import 'mimir/mimir.libsonnet';

mimir {
  _config+:: {
    namespace: 'default',
    external_url: 'http://test',

    // Use consul for hash rings.
    memberlist_ring_enabled: false,

    blocks_storage_backend: 'gcs',
    blocks_storage_bucket_name: 'blocks-bucket',
    bucket_index_enabled: true,

    ruler_enabled: true,
    ruler_client_type: 'gcs',
    ruler_storage_bucket_name: 'rules-bucket',

    alertmanager_enabled: true,
    alertmanager_client_type: 'gcs',
    alertmanager_gcs_bucket_name: 'alerts-bucket',

    // Enable query-scheduler with ring-based service discovery.
    query_scheduler_enabled: true,
    query_scheduler_service_discovery_mode: 'ring',
  },
}
