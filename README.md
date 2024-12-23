
# FiveM ALTF4 Logger

## Overview
The **FiveM ALTF4 Logger** is a script designed for FiveM servers to monitor and log instances where players abruptly disconnect from the server using methods like ALT+F4 or other forced shutdowns. This ensures better server management and helps administrators track potential rule violations or troubleshoot issues.

## Files

### 1. `client.lua`
- Handles client-side logic to detect disconnections or specific events triggered by players.
- Communicates with the server-side script for logging purposes.

### 2. `server.lua`
- Manages server-side logging of disconnection events.
- Processes and stores player data for administrative review.

### 3. `config.lua`
- Contains customizable configuration options for the script.
- Enables easy modification of logging settings, notifications, and other parameters.

### 4. `fxmanifest.lua`
- Metadata file defining the resource for FiveM.
- Specifies script dependencies and compatibility with the FiveM framework.

## Features
- Logs abrupt player disconnections (e.g., ALT+F4) with relevant details.
- Configurable options to customize the behavior of the script.
- Lightweight and optimized for server performance.
- Supports real-time notifications to administrators for immediate action.

## Installation
1. Download the script and extract the contents to your server's resource folder.
2. Add the resource to your `server.cfg` file:
   ```plaintext
   ensure FiveM-ALTF4-Logger
   ```
3. Configure settings in `config.lua` as per your server's requirements.
4. Restart your FiveM server to activate the resource.

## Compatibility
- Designed for use with FiveM servers.
- Requires basic server-side configuration.

## Usage
The script automatically monitors player disconnections once enabled. Administrators can view logs or receive real-time notifications based on the configurations.

## License
This project may include a license file within the repository. Please review the terms before use.

---
For further customization or issues, refer to the respective Lua script files or reach out to the development community.
