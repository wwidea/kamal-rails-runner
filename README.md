# Kamal Rails Runner

Run Rails commands inside Kamal-managed containers on a Docker server.

## Installation

To install `kamal-rails-runner`, run the following command:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/wwidea/kamal-rails-runner/main/install.sh | sudo sh
```

## Configuration
Add an application name label to the Kamal deploy.yml file.

```yaml
# Add application name label.
labels:
  application: your_application_name
```

## Usage

To run a Rails command inside a container, use the following syntax:

```bash
kamal-rails-runner <APPLICATION> <COMMAND>
```

### Arguments

- `<APPLICATION>`: The name of the Kamal application.
- `<COMMAND>`: The Rails command you want to run inside the container.

### Example:

```bash
kamal-rails-runner your_application_name "CleanupJob.perform_now"
```
