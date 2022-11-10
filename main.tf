module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  aws_sso = "AWSReservedSSO_admin_9995177ba734a9a9"
  cluster_name = "nessa-cluster"
  cluster_version = "1.23"
  vpc_id = "vpc-0103ed64eb2f0b697"

  private_subnets = ["subnet-0ca96370b24f4493d", "subnet-0e1610e50e74a6798"]
  public_subnets  = ["subnet-0c9c22f398e8b2070", "subnet-025358f3114e154d3"]
}