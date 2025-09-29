# Deployment Guide

## Overview
This document provides deployment instructions for the Quali Torque assignment infrastructure.

## Prerequisites
- Terraform >= 1.5.0
- AWS CLI configured with appropriate credentials
- Access to Quali Torque platform

## Deployment Steps

### 1. Initialize Terraform
```bash
cd terraform/
terraform init
```

### 2. Plan Deployment
```bash
terraform plan -var="bucket_name=your-unique-bucket-name"
```

### 3. Apply Configuration
```bash
terraform apply -var="bucket_name=your-unique-bucket-name"
```

## CI/CD Pipeline
The project includes an automated CI/CD pipeline that:
- Validates Terraform configuration
- Runs security scans with Checkov
- Performs format checks
- Provides deployment summaries

## Torque Integration
The `blueprint.yaml` file defines the infrastructure blueprint for Quali Torque deployment.