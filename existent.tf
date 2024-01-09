variable "existent_vpc" {
  type        = bool
  description = "description"
}

variable "vpc_id" {
  type        = string
  default     = null
  description = "description"
}

variable "public_subnet_ids" {
  type        = list(string)
  default     = null
  description = "description"
}

variable "private_subnet_ids" {
  type        = list(string)
  default     = null
  description = "description"
}

data "aws_vpc" "existent" {
  count = var.existent_vpc == true ? 1 : 0
  id    = var.vpc_id
}