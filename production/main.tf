terraform {
  required_version = "~> 1.8.0"

  required_providers {
    pagerduty = {
      source  = "pagerduty/pagerduty"
      version = "~> 3.15.1"
    }
  }
}
