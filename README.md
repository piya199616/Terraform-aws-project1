# Terraform-aws-project1-Deploying -3tier-ELB-HA-Application using Terraform on AWS

__AWS Services :- EC2 Instances, VPC, Nat Gateway , Internet Gateway, security groups, Classic Load balancer.__

** So Here We will Deploy our Application in 2 Availability Zones **


* Make sure you understand terraform and AWS 
+ Install Terraform CLI on your local system and Configure AWS credentials with AWS configure.
+ Create a Terraform settings block which includes provider details and terraform version details.
+  Create bash script for installation of Httpd
+  Create a folder and copy your private key of private ec2 instances. 
+  Resources Used
    - 1 VPC ,6 subenets (public,Private,Database) ,1 Nat gateway in Public Subnet . 1 Internet Gateway attcahed to VPC.
    - 1 Bastion host and 2 private EC2 insatnces in 2 AZs.
    -  1 Classic Load balancer.
    -  3 Security Groups (bastion host,Private Ec2 and Load balancer)
    -  with the help of provisioner we will copy the file from local(private key file you copied) to Bastion host,Run some commands on remote host.
+  Now Run Terraform Init ,Terraform validate ,Terraform plan ,Terraform apply and Terraform destroy.

+ Project Architecture


<img width="404" alt="img1" src="https://user-images.githubusercontent.com/98099702/227704381-e86e5dcb-56ac-497b-a298-0b9cd490b12e.png">
