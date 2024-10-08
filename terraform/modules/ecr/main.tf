resource "aws_ecr_repository" "ecr" {
    for_each = toset(var.ecr_name)
    name = each.key
    image_tag_mutability = var.image_mutability
    encryption_configuration {
      encryption_type = var.encrypt_type
    }
    tags = var.tags
}

