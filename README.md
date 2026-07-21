# AWS Terraform Bootcamp - Day 10
# Terraform Environments (Dev, Staging, Production)

## Project Overview

This project demonstrates an enterprise-style Terraform architecture for managing multiple AWS environments using reusable Terraform modules.

The goal of Day 10 was to understand how companies separate infrastructure environments such as:

- Development (dev)
- Staging
- Production (prod)

while maintaining clean, reusable, and scalable Terraform code.

---

# Learning Objectives

By the end of this project, I learned:

- Why companies use multiple environments
- Difference between Development, Staging, and Production
- Terraform module structure
- Environment-specific Terraform configuration
- Reusable infrastructure components
- Environment variables using `.tfvars`
- Managing VPC, Security Groups, and EC2 using modules
- Enterprise Terraform project organization

---

# Architecture

The project creates AWS infrastructure using Terraform modules.

Current architecture:
