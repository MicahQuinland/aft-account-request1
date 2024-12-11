# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
# 1
module "sandbox_account_03" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "micahq+dec01+sbx3@amazon.com"
    AccountName  = "dec01-sbx3"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Prod-AFT (ou-2j5p-yff4vk6s)"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "micahq+dec01@amazon.com"
    SSOUserFirstName = "John"
    SSOUserLastName  = "Doe"
  }

  account_tags = {
    "ABC:Owner"       = "john.doe@amazon.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "John Doe"
    change_reason       = "testing the account vending process"
  }

}
