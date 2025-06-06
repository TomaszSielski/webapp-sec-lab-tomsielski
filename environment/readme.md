# Target Azure app plan develpement using Hashicorp Terraform

## prereqisities
### Azure 
 - Subscription
 - Create Resource Group. I want to restrict a Service Principal to create objects only within a specific Azure Resource Group
   - <code> az group create --name  rg_webapp_sec_lab --location westeurope </code>
 - Create Service Principal
   - <code> az ad sp create-for-rbac --name "terraform-github-action" </code>
   - and assign Contributor role for Resource Group
   - <code> az role assignment create  / 
     --assignee [ServicePrincipalID] --role Contributor  /
     --scope [/subscriptions/SubscriptionID/resourceGroups/rg_webapp_sec_lab] </code>
   - I could use Custom Role to limit SP to specific action.  
 
### Hasicorp 
 - account
 - app.hasicorp.io project
 - app.hasicorp.io workspace
version control workflow chosed - to allow push changes depends on github commits in main branch
### GitHub
 - Create Terraform configuration files
 - Configure GitHub Secrets
   - ARM_CLIENT_ID
   - ARM_CLIENT_SECRET
   - ARM_SUBSCRIPTION_ID
   - ARM_TENANT_ID


