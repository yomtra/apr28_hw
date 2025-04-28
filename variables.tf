#creates a variable that lets me make multiple security groups dynamically
variable "security_groups" {
  type = map(object({
    name        = string
    description = string
    vpc_id      = string
  }))  
}