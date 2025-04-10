# Kamal Rails Runner

Run Rails commands inside Kamal-managed containers on a Docker server.

## Installation

To install `kamal-rails-runner`, run the following command:

```bash
curl -sSL https://raw.githubusercontent.com/wwidea/kamal-rails-runner/main/install.sh | sudo sh
```

## Usage

To run a Rails command inside a container, use the following syntax:

```bash
kamal-rails-runner <SERVICE> <COMMAND>
```

### Arguments

- `<SERVICE>`: The name of the Kamal service.
- `<COMMAND>`: The Rails command you want to run inside the container.

Example:

```bash
kamal-rails-runner my-app "CleanupJob.perform_now"
```
