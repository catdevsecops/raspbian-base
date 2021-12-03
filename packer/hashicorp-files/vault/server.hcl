# disable_cache = true
# disable_mlock = true

ui = true

# Advertise the non-loopback interface
api_addr = "http://192.168.0.21:8200"
cluster_addr = "http://192.168.0.21:8201"

backend "consul" {
  address = "127.0.0.1:8500"
  path = "vault/"
  scheme = "http"
  tls_disable = 1
}

listener "tcp" {
  address = "192.168.0.21:8200"
  cluster_address = "192.168.0.21:8201"
  tls_disable = 1
}

listener "tcp" {
  address = "127.0.0.1:8200"
  cluster_address = "127.0.0.1:8201"
  tls_disable = 1
}

# telemetry {
#   prometheus_retention_time = "30s"
#   statsite_address = "127.0.0.1:8125"
#   disable_hostname = true
# }
