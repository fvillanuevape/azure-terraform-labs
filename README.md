# README

This README provides instructions for deploying the Azure Terraform Provider version 4.0.1.

## Prerequisites

Before deploying the Azure Terraform Provider, ensure that you have the following:

- Azure account
- Terraform installed

## Deployment Steps

1. Clone the repository to your local machine.
2. Navigate to the project directory.
3. Open the terminal and run the following command to initialize Terraform:

    ```
    terraform init
    ```

4. Create a new file named `main.tf` and add the following code:

    ```hcl
    provider "azurerm" {
      version = "4.0.1"
    }
    ```
5. Define environmente variable ARM_SUBSCRIPTION_ID

    ```bash
    export ARM_SUBSCRIPTION_ID = "YOUR SUBSCRITION ID"
    ```

5. Save the file and run the following command to apply the Terraform configuration:

    ```
    terraform apply
    ```

6. Follow the prompts to authenticate with your Azure account and confirm the deployment.

Congratulations! You have successfully deployed the Azure Terraform Provider version 4.0.1.
