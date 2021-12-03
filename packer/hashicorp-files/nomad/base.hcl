name = "NODE1"
region = "global"
datacenter = "LAB"

data_dir = "/opt/nomad/data"

log_level = "INFO"
enable_syslog = true

advertise {
  http = "192.168.0.21"
   rpc = "192.168.0.21"
  serf = "192.168.0.21"
}

acl {
  enabled = false
  token_ttl = "30s"
  policy_ttl = "60s"
}

consul {
  # The address to the Consul agent.
  address = "127.0.0.1:8500"

  # The service name to register the server and client with Consul.
  server_service_name = "nomad-servers"
  client_service_name = "nomad-clients"

  # Enables automatically registering the services.
  auto_advertise = true

  # Enabling the server and client to bootstrap using Consul.
  server_auto_join = true
  client_auto_join = true
}

# telemetry {
#  publish_allocation_metrics = true
#  publish_node_metrics       = true
#  prometheus_metrics         = true
# }
