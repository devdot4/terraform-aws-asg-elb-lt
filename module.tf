module "vpc1" {
  source        = "dalerboboev/vpc1/aws"
  version       = "1.0.13"
  region        = var.aws_region
  cidr_block    = "10.0.0.0/16"
  public_cidr1  = "10.0.101.0/24"
  public_cidr2  = "10.0.102.0/24"
  public_cidr3  = "10.0.103.0/24"
  private_cidr1 = "10.0.1.0/24"
  private_cidr2 = "10.0.2.0/24"
  private_cidr3 = "10.0.3.0/24"
  tags          = var.aws_tags
}
module "db" {
  source                  = "maxat2416/RDS-project/aws"
  version                 = "1.0.6"
  name                    = "rds_db_team3_are_the_best"
  engine                  = "aurora"
  engine_version          = "5.6.10a"
  instance_class          = "db.r4.large"
  vpc_id                  = module.vpc1.vpc
  subnet_ids              = module.vpc1.private_subnets
  allowed_security_groups = [aws_security_group.sec-group-team4.id]
  allowed_cidr_blocks     = ["10.0.0.0/16"]
  aws_ssm_parameter_name  = "/devops/us-east-1/passwords/team3db-cluster"
  aws_route53_zone        = "devdot.com"
  region                  = var.aws_region
  db_subnet_group_name    = "team4"
  vpc_security_group_id   = aws_security_group.sec-group-team4.id
}