terraform {
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.76.0"
    }
    pagerduty = {
      source  = "PagerDuty/pagerduty"
      version = "~> 2.0"
    }
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 2.41.2"
    }
    github = {
      source  = "integrations/github"
      version = "4.24.1"
    }
  }
}


module "some_module" {
  source    = "git::github.com/DigitalInnovation/terraform-mns-pagerduty?ref=1.0.0"
  app_name  = "bla"
  threshold = 1
  duration  = 60
}
