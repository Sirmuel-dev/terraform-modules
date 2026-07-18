# Terraform AWS EC2 Module Project

## Overview

This project demonstrates how to create AWS EC2 instances using a reusable Terraform module.

Instead of writing the EC2 resource multiple times, the EC2 configuration is defined once inside a module and reused to create multiple EC2 instances using Terraform `count` or `for_each`.

The project follows Terraform best practices:

- Reusable infrastructure modules
- Separation of module and environment configuration
- Scalable EC2 provisioning
- Variable-driven configuration

---

## Architecture
