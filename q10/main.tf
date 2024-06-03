
module "vpc" {
  source = "./vpc"
  # cidr_block = module.vpc.cidr_block
  # name       = module.vpc.name
}

module "ec2" {
  source      = "./ec2"
  # ami_id      = module.ec2.ami_id
  subnet_ids  = module.vpc.subnet_ids
  vpc_id      = module.vpc.vpc_id
}

module "rds" {
  source        = "./rds"
  # allocated_storage = module.rds.allocated_storage
  # engine        = module.rds.engine
  subnet_ids    = module.vpc.subnet_ids
  vpc_id        = module.vpc.vpc_id
}
