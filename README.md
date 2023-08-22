# terraform-config

Contains the configuration of all cloud/infra related services.

## Usage

Clone the repository:

```bash
git clone git@github.com:dane/terraform-config.git
cd terraform-config
```

Populate the `.env` with the following values from 1Password's
"terraform-config" entry:

```
CLOUDFLARE_API_TOKEN=...
GITHUB_TOKEN=...
AWS_ACCESS_KEY_ID=...
AWS_SECRET_ACCESS_KEY=...
AWS_REGION=us-east-1
```

Run `terraform`:

```bash
godotenv terraform plan
```
