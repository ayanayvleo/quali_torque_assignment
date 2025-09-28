# Deploying a Simple Environment Using Torque Platform
## Home Assignment - Solutions Architect Role

### Project Overview
This project demonstrates end-to-end infrastructure automation using Quali's Torque platform to deploy AWS infrastructure through Infrastructure as Code (IaC). The implementation showcases the complete DevOps workflow from code repository to cloud resource provisioning.

### Architecture
- **Source Control**: GitHub repository with Terraform modules
- **Orchestration Platform**: Torque for environment management
- **Infrastructure Provider**: AWS (S3 bucket creation)
- **Execution Environment**: Kubernetes-based Torque agent
- **Configuration Management**: YAML-based blueprint definitions

### Repository Structure
```
├── main.tf              # Terraform AWS provider and S3 resource configuration
├── variables.tf         # Input variable definitions for bucket name and AWS credentials
├── outputs.tf           # Output definitions for bucket name and ARN
├── blueprint.yaml       # Torque blueprint configuration with grain definitions
├── README.md           # This documentation
└── screenshots/        # Documentation screenshots
    ├── 01-repository-connected.png
    ├── 02-agent-status.png
    ├── 03-blueprint-configuration.png
    ├── 04-environment-active.png
    ├── 05-deployment-logs.png
    ├── 06-terraform-outputs.png
    └── 07-s3-bucket-created.png
```

### Implementation Steps Completed

#### 1. Agent Installation and Configuration
- Deployed Kubernetes-based Torque agent (torqueagent01)
- Configured agent with default namespace for proper execution context
- Verified agent connectivity and health status in Torque UI

#### 2. Infrastructure as Code Development
Created modular Terraform configuration:
- **Provider Configuration**: AWS provider with region and credential handling
- **Resource Definition**: S3 bucket with configurable naming
- **Variable Management**: Parameterized inputs for flexibility
- **Output Generation**: Bucket name and ARN for downstream consumption

#### 3. Repository Integration
- Connected GitHub repository to Torque platform
- Implemented secure authentication using GitHub Personal Access Token
- Configured repository synchronization for automatic code discovery

#### 4. Blueprint Design
Developed Torque blueprint with:
- Terraform grain configuration pointing to repository root
- Agent assignment for execution targeting
- Input variable mappings for bucket naming
- Output exposure for result visibility

#### 5. Environment Deployment
- Successfully launched environment through Torque dashboard
- Monitored deployment progress through real-time logging
- Verified resource creation in AWS S3 console

### Technical Challenges and Solutions

#### Challenge 1: Repository Path Resolution
**Issue**: Torque initially failed to locate Terraform files due to path configuration mismatch.
**Solution**: Adjusted blueprint source path from `./` to `.` to correctly reference repository root.

#### Challenge 2: Agent Namespace Configuration
**Issue**: Kubernetes namespace requirements were not properly specified.
**Solution**: Added explicit namespace configuration (`default`) to agent specification in blueprint.

#### Challenge 3: AWS Credential Integration
**Issue**: Multiple attempts at credential templating syntax resulted in authentication failures.
**Solution**: Utilized hardcoded credentials for proof-of-concept, then implemented proper credential management through Torque's secure variable system.

### DevOps Best Practices Demonstrated

#### Security
- Secure credential management through Torque's encrypted vault
- IAM user with least-privilege permissions (S3-only access)
- No sensitive data stored in repository files

#### Automation
- Complete infrastructure lifecycle management through code
- Automated deployment pipeline from commit to infrastructure
- Environment reproducibility through declarative configuration

#### Monitoring and Observability
- Comprehensive logging throughout deployment process
- Real-time status monitoring in Torque dashboard
- Output validation through AWS console verification

### Results and Verification

#### Successful Deployments
- **Torque Environment**: Active status with proper resource allocation
- **AWS S3 Bucket**: `my-torque-test-bucket-12345` successfully created
- **Terraform Outputs**: Bucket name and ARN properly exposed

#### Performance Metrics
- **Deployment Time**: ~8 seconds for complete infrastructure provisioning
- **Resource Count**: 1 AWS resource added, 0 changed, 0 destroyed
- **Environment Duration**: 2-hour automatic lifecycle management

### Technical Specifications

#### Infrastructure Components
- **AWS Account**: 972067303816
- **Region**: us-east-1 (N. Virginia)
- **Resource Type**: S3 Standard storage bucket
- **Bucket Name**: my-torque-test-bucket-12345

#### Platform Configuration
- **Torque Agent**: torqueagent01 (Kubernetes-based)
- **Repository**: GitHub integration with main branch tracking
- **Blueprint**: Single-grain Terraform module configuration

### Optimizations and Enhancements

#### Current Implementation
- Modular Terraform code structure for reusability
- Parameterized configuration for environment flexibility
- Comprehensive output generation for integration scenarios

#### Future Improvements
- CI/CD integration with GitHub Actions for automated testing
- Multi-environment support with variable workspace management
- Enhanced monitoring with CloudWatch integration
- Cost optimization through lifecycle policies

### Business Value

This implementation demonstrates enterprise-ready infrastructure automation capabilities essential for scaling DevOps operations:

1. **Reduced Manual Effort**: Eliminates manual resource provisioning
2. **Improved Consistency**: Ensures identical deployments across environments
3. **Enhanced Security**: Centralized credential management and audit trails
4. **Accelerated Delivery**: Faster time-to-market for infrastructure changes
5. **Cost Control**: Automated lifecycle management reduces resource waste

### Lessons Learned

#### Platform Integration
Understanding platform-specific configuration requirements is crucial for successful automation implementation. Torque's blueprint syntax and credential management have specific patterns that must be followed precisely.

#### Debugging Methodology
Systematic troubleshooting through log analysis and incremental testing proved essential for resolving complex integration issues. Each configuration change was tested independently to isolate problem areas.

#### Documentation Importance
Comprehensive documentation throughout the development process enabled quick problem resolution and knowledge transfer. Screenshots and detailed logs provided valuable debugging context.

### Repository Access
- **GitHub Repository**: https://github.com/ayanayvleo/quali-torque-assignment
- **Branch**: main
- **Last Updated**: September 28, 2025

### Contact Information
For questions regarding this implementation or to discuss Solutions Architect opportunities:
- **Email**: ayanayvleo@gmail.com
- **GitHub**: @ayanayvleo

---

*This assignment was completed as part of the Solutions Architect interview process for Quali, demonstrating hands-on experience with infrastructure automation, Infrastructure as Code (IaC), and cloud orchestration.*
