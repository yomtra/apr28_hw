resource "aws_security_group" "sg_groups"{
    for_each = var.security_groups
    
    name = each.value.name
    description = each.value.description
    vpc_id = each.value.vpc_id

    tags = {
        Name = each.value.name
    }
}


# resource "aws_security_group_rule" "ingress" {
#     for_each = {
        
#     }
# }

