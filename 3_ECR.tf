module "ecr" {
  source  = "terraform-module/ecr/aws"
  version = "~> 1.0"

  ecrs = {
    skanestesio = {
      tags = merge(var.globaltags)
      lifecycle_policy = {
        rules = [{
          rulePriority = 1
          description  = "keep last 50 images"
          action = {
            type = "expire"
          }
          selection = {
            tagStatus   = "any"
            countType   = "imageCountMoreThan"
            countNumber = 50
          }
        }]
      }
    },
    skauth = {
      tags = merge(var.globaltags)
      lifecycle_policy = {
        rules = [{
          rulePriority = 1
          description  = "keep last 50 images"
          action = {
            type = "expire"
          }
          selection = {
            tagStatus   = "any"
            countType   = "imageCountMoreThan"
            countNumber = 50
          }
        }]
      }
    },
    sxinfinity = {
      tags = merge(var.globaltags)
      lifecycle_policy = {
        rules = [{
          rulePriority = 1
          description  = "keep last 50 images"
          action = {
            type = "expire"
          }
          selection = {
            tagStatus   = "any"
            countType   = "imageCountMoreThan"
            countNumber = 50
          }
        }]
      }
    }
  }
  


}