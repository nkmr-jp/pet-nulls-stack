# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "simple" {
  inputs = {
    prefix           = "simple"
    instances        = 5
  }
}

deployment "complex" {
  inputs = {
    prefix           = "complex"
    instances        = 10
  }
}

orchestrate "auto_approve" "simple" {
  check {
    condition = context.plan.deployment == deployment.simple
    reason    = "Automatically approved simple."
  }
}
