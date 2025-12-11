data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "input" {
  for_each = var.subnet_map
  id       = each.value
}

# Only validate if security groups already exist
data "aws_security_group" "input" {
  count = length(var.security_group_ids)
  id    = var.security_group_ids[count.index]
  
  lifecycle {
    # Skip validation if SG is being created in same apply
    precondition {
      condition     = can(data.aws_security_group.input[count.index].id)
      error_message = "Security group does not exist yet"
    }
  }
}