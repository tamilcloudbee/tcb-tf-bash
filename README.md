# How to Execute the Script and Expected Output

## Overview
The provided Bash script scans a given Terraform repository path and extracts all `.tf` and `.tfvars` files, saving their content into an output file. The script helps in reviewing Terraform configurations from a centralized file.

## Prerequisites
- Ensure you have a valid Terraform repository.
- Clone the repository:
  ```bash
  git clone https://github.com/tamilcloudbee/tcb-tf-bash.git
  cd tcb-tf-bash.git

  ```
- The script should have execution permissions:
  ```bash
  chmod +x tfcontent-generator.sh
  ```
- Provide the repository path as an argument when executing the script.

## Execution Steps
1. Navigate to the directory containing the script.
2. Run the script with the Terraform repository path as an argument:
   ```bash
   ./tfcontent-generator.sh ~/Desktop/tf-networking
   ```

## What Happens When You Run the Script?
1. The script checks if a repository path is provided.
2. It verifies whether the specified path exists.
3. If the path is valid, the script:
   - Searches for `.tf` and `.tfvars` files in the directory and its subdirectories.
   - Extracts and appends the content of each file to `tfoutput.txt` on the desktop.
4. If the path does not exist, an error message is displayed.
5. Upon successful execution, a message confirms that the output has been saved.

## Expected Output
A new file named `tfoutput.txt` will be created on the desktop containing the content of all Terraform files in the `tf-networking` repository. The structure of `tfoutput.txt` will resemble:

```
==============================
File: /home/user/Desktop/tf-networking/main.tf
------------------------------
<Contents of main.tf>

==============================
File: /home/user/Desktop/tf-networking/modules/subnets/main.tf
------------------------------
<Contents of main.tf inside subnets>

...

==============================
File: /home/user/Desktop/tf-networking/terraform.tfvars
------------------------------
<Contents of terraform.tfvars>
```

## Repository Structure
If executed within the `tf-networking` repository, the script will extract files from:
```
tf-networking
├── main.tf
├── modules
│   ├── subnets
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── tgw
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── vpc
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
├── outputs.tf
├── README.md
├── terraform.tfvars
└── variables.tf
```

## Conclusion
This script is useful for extracting and reviewing Terraform configurations quickly. It helps in analyzing configurations without navigating through multiple files manually.


