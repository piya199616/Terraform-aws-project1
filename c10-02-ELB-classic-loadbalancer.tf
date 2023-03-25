module "elb" {
  source  = "terraform-aws-modules/elb/aws"
  version = "4.0.1"
  # insert the 4 required variables here


  name = "${local.name}-myelb"   #calling the local value from c3

  subnets         = [module.vpc.public_subnets[0] , module.vpc.public_subnets[1]] #LB will sit in public subnets
  security_groups = [aws_security_group.loadbalancer_sg.id]
  internal        = false

  listener = [
    {
      instance_port     = 80
      instance_protocol = "HTTP"
      lb_port           = 80
      lb_protocol       = "HTTP"
    },
    {
      instance_port     = 80
      instance_protocol = "http"
      lb_port           = 81
      lb_protocol       = "http"
      #ssl_certificate_id = "arn:aws:acm:eu-west-1:235367859451:certificate/6c270328-2cd5-4b2d-8dfd-ae8d0004ad31"
    },
  ]

  health_check = {
    target              = "HTTP:80/"
    interval            = 30
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 5
  }

  

  // ELB attachments
  number_of_instances = var.private_instance_count
  instances           = [for instance in module.ec2_private : instance.id]
  #instances           = [module.ec2_private[count.index].id]
  tags = local.common_tags
}