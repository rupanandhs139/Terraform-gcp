variable "project_id" {
  type        = string
  description = "GCP Project ID"
}

variable "env" {
  type        = string
  description = "Environment (practice, qa, cert, prod)"
}

variable "image_list" {
  type        = list(string)
  description = "List of 4 GCP image names (5th is from data block)"
}

variable "machine_types" {
  type        = list(string)
  description = "List of 5 machine types"
}