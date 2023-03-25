# Terraform-aws-project1-Deploying -3tier-ELB-HA-Application using Terraform on AWS

AWS Services :- EC2 Instances, VPC, Nat Gateway , Internet Gateway, security groups, Classic Load balancer.

So Here We will Deploy our Application in 2 Availability Zones .
Make sure you understand terraform and AWS .
Install Terraform CLI on your local system and Cnnfigure AWS credentials with AWS configure.
Create a Terraform settings block which includes provider details and terraform version details.
Create bash script for installation of Httpd
create a folder and copy your private key of private ec2 instances. 
1 VPC ,6 subenets (public,Private,Database) ,1 Natgateway in Public SUbnet .! Internet Gatway attcahed to VPC.
1 Bastion host and 2 private EC2 insatnces in 2 AZs.
1 Classic Load balancer.
3 Security Groups (bastion host,Private Ec2 and Load balancer)
with the help of provisioner we will copy the file from local(private key file you copied) to Bastion host,Run some commands on remote host.
Now Run Terraform Init ,Terraform validate ,Terraform plan ,Terraform apply and Terraform destroy.
