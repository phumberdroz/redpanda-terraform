terraform {
  backend "local" {}
  required_providers {
    kafka = {
      source  = "Mongey/kafka"
      version = "~> 0.4"
    }
  }
}

provider "kafka" {
 bootstrap_servers = ["localhost:9092"]
}

resource "kafka_topic" "test" {
 name               = "test"
 replication_factor = 2
 partitions         = 50
}