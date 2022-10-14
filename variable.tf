#Define AWS Region
variable "region" {
  description = "Infrastructure region"
  type        = string
  default     = "us-east-2"
}
variable "owner_vpc_id" {
  description = "$(owner_vpc_description)"
  default     = "vpc-01a729fa6d2356ad4"
}
variable "accepter_vpc_id" {
  description = "$(accepter_vpc_description)"
  default     = "vpc-04aa0891228d81dd7"
  
}
