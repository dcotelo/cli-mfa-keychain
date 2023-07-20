# Multi-Factor Authentication (MFA) Setup Script

This script is designed to help you set up Multi-Factor Authentication (MFA) using the `oath-toolkit` on macOS. MFA adds an extra layer of security to your services by requiring a Time-based One-Time Password (TOTP) generated from a secret seed.

## Prerequisites

Before running this script, please ensure you have the following:

1. **Homebrew**: The script uses Homebrew for package management. If you don't have Homebrew installed, you can get it from [https://brew.sh/](https://brew.sh/).

2. **oath-toolkit**: The script requires the `oath-toolkit` package to generate TOTP codes. If you don't have it installed, the script will attempt to install it using Homebrew.

## Running the Script

To set up MFA for your desired service, follow these steps:

1. Download the script and save it to your local machine.

2. Open the terminal and navigate to the location where you saved the script.

3. Make the script executable if needed:
`chmod +x mfa_setup_script.sh`

4. Execute the script:
`./mfa_setup_script.sh`

5. Follow the instructions provided by the script:

- You will be asked to enter the name of the service you want to set up MFA for (e.g., `aws`, `gmail`, etc.).

- Next, you'll be prompted to enter the MFA seed (secret) associated with the service. This seed is usually provided by the service when enabling MFA.

- The script will add the MFA seed to your macOS keychain for secure storage.

6. After completing the setup, the script will provide you with instructions to create an alias for generating TOTP codes for your service. The alias will allow you to generate the MFA code easily using the `oath-toolkit`.

- For zsh shell users, you need to add the provided alias command to your `~/.zshrc` file.
- For bash shell users, add the alias to your `~/.bashrc` file.

7. Restart your terminal or run `source ~/.zshrc` or `source ~/.bashrc` to apply the changes.

## Caution

- Please ensure you have Homebrew installed and properly set up before running the script.

- Make sure to follow the instructions carefully while setting up the alias for your service. Incorrect configuration may lead to issues in generating MFA codes.

- Keep your MFA seed secure. It's sensitive information and should not be shared with others.

- If you encounter any issues or have questions, feel free to reach out for support.

**Note:** This script is intended for use on macOS systems. It may not work correctly on other operating systems.

## Disclaimer

This script is provided as-is, and the authors take no responsibility for any loss, damages, or issues that may arise from its use. Use the script at your own risk and carefully review its contents before execution.

## License

This script is licensed under the [MIT License](LICENSE). Feel free to modify and distribute it as per the terms of the license.

