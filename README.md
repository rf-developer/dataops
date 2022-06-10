# dataops

This virtual machine is loaded with all the development tools you'll need. It offers a persistent 5GB home directory and runs in Google Cloud, greatly enhancing network performance and authentication. Much, if not all, of your work in this codelab can be done with simply a browser or your Chromebook.

Once connected to Cloud Shell, you should see that you are already authenticated and that the project is already set to your project ID.

The gcloud command-line tool is the powerful and unified command-line tool in Google Cloud. It comes preinstalled in Cloud Shell. You will notice its support for tab completion.

The gcloud command-line tool is the powerful and unified command-line tool in Google Cloud. It comes preinstalled in Cloud Shell. You will notice its support for tab completion.

Once the main.tf file is created, initialise Terraform it. 







This will also download the Google provider.
terraform init
validate the content using Terraform.
terraform validate
On successful validation, run a dry run to see what actions will be performed when Terraform is run.
terraform plan
Run the Terraform script to generate the new infrastructure based on main.tf.
terraform apply
Congratulations!
