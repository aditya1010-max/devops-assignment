variable "project_id" {
    description = "GCP Project ID" 
    type = string
}

variable "region" {
    description = "GCP Region"
    type = string
}

variable "zone" {
    description = "GCP Zone"
    type = string
}

variable "machine_type" {
    description = "VM machine type"
    type = string
    default = "e2-medium"
}