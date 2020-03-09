# Home Assistant Add-on: Monitoror

![](/monitoror/logo.png)

# About

[Monitoror](https://github.com/monitoror/monitoror) is a wallboard monitoring app to monitor server status; monitor CI builds progress or even display critical values.

## Getting Started

### Installation

1. Go to Supervisor in the sidebar and click on "Add-on Store"
2. Add https://github.com/markgaze/hassio-monitoror under "Repositories"
3. This add-on should then be shown below. Click on it and click on "Install".

### Configuration

For now the only available configuration option is the GitHub PAT which Monitoror will use to connect to your GitHub data, this can be configured as follows:

```yaml
github_token: INSERT_GITHUB_PAT_HERE
```

## Usage

Once the add-on is running, you can visit the Monitoror instance at `http://[YOUR_HOME_ASSISTANT_IP]:8080`

You will need a configuration file, which is outlined in the [Monitoror docs](https://monitoror.com/documentation/#configuration). This can be stored in your `config` directory in Home Assistant or at any accessible URL.

If you store your configuration file in the `config` directory (for example, at the following location `config/monitoror/config.json`), you can access it in Monitoror by visiting: `http://[YOUR_HOME_ASSISTANT_IP]:8080?configPath=/config/monitoror/config.json`

## Other information

For all other information, such as configuration options, please see the [Monitoror docs](https://monitoror.com/documentation)
