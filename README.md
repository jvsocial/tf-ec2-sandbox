# Terraform EC2 Sandbox

This repository provides a quick way to launch an EC2 instance on AWS using Terraform. All you need to do is **fork this repo**, create a `terraform.tfvars` file with your AWS credentials, and run Terraform commands to deploy your instance.

---

## Prerequisites

It is assumed that you:

- Have access to an **AWS account**.
- Have your **AWS access key**, **secret key**, and (if needed) **session token** handy.

---

## Steps to Use the Repository

### 1. Fork This Repository

Click the **Fork** button on the top right to create your copy of the repository.

---

### 2. Clone Your Fork Locally

```bash
git clone https://github.com/YOUR_USERNAME/tf-ec2-sandbox.git
cd tf-ec2-sandbox
```

---

### 3. Create the `terraform.tfvars` File

In the root directory of the repository, create a file named **`terraform.tfvars`** and add the following content:

```hcl
aws_access_key = "XXX"      # Replace with your AWS access key
aws_secret_key = "XXX"      # Replace with your AWS secret key
aws_token      = "XXX"      # Optional: Use if your AWS session requires a token
aws_region     = "us-east-1"  # Replace with your desired AWS region
```

> ⚠️ **Note:**  
> Keep the `terraform.tfvars` file private to protect sensitive information.

---

### 4. Initialize Terraform

Run the following command to download required providers and initialize Terraform.

```bash
terraform init
```

---

### 5. Apply the Terraform Configuration

Run the following command to create the EC2 instance:

```bash
terraform apply
```

When prompted, type **yes** to confirm the changes.

---

### 6. Destroy the EC2 Instance (Optional)

Once you're done, destroy the instance to avoid unnecessary charges:

```bash
terraform destroy
```

---

## Troubleshooting

- **Terraform not installed:** Verify the installation with `terraform -v`.
- **AWS credentials error:** Ensure your AWS access key, secret key, and token are correctly set in `terraform.tfvars`.
- **Plugin issues:** If you encounter provider errors, try:
  ```bash
  terraform init -upgrade
  ```

---

## License

This repository is licensed under the MIT License. Feel free to use it for educational purposes.
