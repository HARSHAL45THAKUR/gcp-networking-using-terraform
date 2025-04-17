🚀 Automating GCP Networking with Terraform
This project demonstrates how to automate the provisioning of essential GCP networking components using Terraform. It encompasses the creation of custom Virtual Private Clouds (VPCs), Virtual Machine (VM) instances, Cloud NAT configurations, VPC peering setups, and firewall rules.​

🧩 Project Overview
The infrastructure setup includes:​
1. Custom VPC Networks: Two separate VPCs (vpc1 and vpc2) with distinct CIDR ranges.
2. Subnets: Defined within each VPC to segment the network.
3. VM Instances: Deployed in each VPC to simulate workloads.
4. Cloud NAT: Configured to allow outbound internet access for resources without external IPs.
5. VPC Peering: Established between vpc1 and vpc2 to enable private communication.
6. Firewall Rules: Implemented to control ingress and egress traffic.​

🛠️ Technologies Used
1. Terraform: Infrastructure as Code (IaC) tool for provisioning and managing cloud resources.
2. Google Cloud Platform (GCP): Cloud provider hosting the networking infrastructure.
3. Shell Scripting: Used for VM instance startup scripts.​

📁 Repository Structure
.
├── main.tf                # Main Terraform configuration
├── provider.tf            # Provider configuration for GCP
├── variables.tf           # Input variables
├── outputs.tf             # Output values
├── vpc1.tf                # Configuration for VPC1
├── vpc2.tf                # Configuration for VPC2
├── vm.tf                  # VM instance definitions
├── nat.tf                 # Cloud NAT configuration
├── firewall.tf            # Firewall rules
├── instance_startup.sh    # Startup script for VM instances
└── README.md              # Project documentation

🚀 Getting Started
Prerequisites: Terraform installed on your local machine, GCP account with necessary permissions, Google Cloud SDK installed​

Deployment Steps
1. Clone the Repository: git clone https://github.com/HARSHAL45THAKUR/gcp-networking-using-terraform.git
cd gcp-networking-using-terraform
2. Initialize Terraform: terraform init
3. Review the Execution Plan: terraform plan
4. Apply the Configuration: terraform apply
Confirm the action when prompted.
5. Verify the Setup: Use the GCP Console or CLI to ensure all resources are provisioned as expected.

📌 Key Highlights
* Modular Design: Each component (VPCs, VMs, NAT, etc.) is defined in separate Terraform files for clarity and reusability.
* Scalability: Easily extendable to include more complex networking scenarios.
* Automation: Reduces manual intervention, ensuring consistent and repeatable deployments.​

🤝 Acknowledgments
This project is inspired by best practices in GCP networking and Terraform automation. It serves as a foundational template for more advanced infrastructure setups.​

Feel free to explore, fork, and contribute to this repository. Your feedback and suggestions are welcome!​

Authored by Harshal Thakur