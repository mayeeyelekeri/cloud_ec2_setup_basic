# cloud_ec2_setup_basic

This module creates the basic setup and brings up 2 ec2 instances 

These are the resources gets created:
- VPC 
- 2 public subnets 
- 2 private subnets 
- Public Security group 
- Private Security group which has access from Public subnets 
- Target Group and Application Load Balancer 
- EC2 Launch Template with httpd running 
- Auto Scaling Group with Launch Template

At the end, EC2 should be accessible from the ALB record.  
