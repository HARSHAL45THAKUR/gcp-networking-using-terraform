# 🚀 Automating GCP Networking with Terraform

This project demonstrates how to automate the provisioning of essential GCP networking components using Terraform. It encompasses the creation of custom Virtual Private Clouds (VPCs), Virtual Machine (VM) instances, Cloud NAT configurations, VPC peering setups, and firewall rules.

## 🧩 Project Overview

The infrastructure setup includes:

- **Custom VPC Networks:** Two separate VPCs (vpc1 and vpc2) with distinct CIDR ranges.
- **Subnets:** Defined within each VPC to segment the network.
- **VM Instances:** Deployed in each VPC to simulate workloads.
- **Cloud NAT:** Configured to allow outbound internet access for resources without external IPs.
- **VPC Peering:** Established between vpc1 and vpc2 to enable private communication.
- **Firewall Rules:** Implemented to control ingress and egress traffic.

## 🛠️ Technologies Used

- **Terraform:** Infrastructure as Code (IaC) tool for provisioning and managing cloud resources.
- **Google Cloud Platform (GCP):** Cloud provider hosting the networking infrastructure.
- **Shell Scripting:** Used for VM instance startup scripts.

## 📁 Repository Structure

The project is organized in the following way:

```
├── main.tf              # Main Terraform configuration
├── provider.tf          # Provider configuration for GCP
├── variables.tf         # Input variables
├── outputs.tf           # Output values
├── vpc1.tf              # Configuration for VPC1
├── vpc2.tf              # Configuration for VPC2
├── vm.tf                # VM instance definitions
├── nat.tf               # Cloud NAT configuration
├── firewall.tf          # Firewall rules
├── instance_startup.sh  # Startup script for VM instances
└── README.md            # Project documentation
```

## 🚀 Getting Started

### Prerequisites

Ensure you have the following before starting:

- Terraform installed on your local machine (version 1.0 or higher)
- A Google Cloud Platform account with necessary permissions
- Google Cloud SDK installed and configured

### Deployment Steps

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/HARSHAL45THAKUR/gcp-networking-using-terraform.git
   cd gcp-networking-using-terraform
   ```

2. **Initialize Terraform:**

   ```bash
   terraform init
   ```

3. **Review the Execution Plan:**

   ```bash
   terraform plan
   ```

4. **Apply the Configuration:**

   ```bash
   terraform apply
   ```

   Confirm the action when prompted.

5. **Verify the Setup:**

   Use the GCP Console or CLI to ensure all resources are provisioned as expected.

## 📌 Key Highlights

- **Modular Design:** Each component (VPCs, VMs, NAT, etc.) is defined in separate Terraform files for clarity and reusability.
- **Scalability:** Easily extendable to include more complex networking scenarios.
- **Automation:** Reduces manual intervention, ensuring consistent and repeatable deployments.

## 🤝 Acknowledgments

This project is inspired by best practices in GCP networking and Terraform automation. It serves as a foundational template for more advanced infrastructure setups.

Feel free to explore, fork, and contribute to this repository. Your feedback and suggestions are welcome!

---

## License

This project is licensed under the [MIT License](LICENSE).


Authored by Harshal Thakur
