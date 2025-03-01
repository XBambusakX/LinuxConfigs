# Configuration Setup Instructions

**Important:** Before proceeding, ensure you back up your existing configuration files. This will prevent data loss in case of unexpected issues.

## Automatic Installation

For a streamlined installation, use the provided script:

1. **Make the script executable (if it isn't already):**

   ```bash
   chmod +x ./config-script.sh

    # Run the script:
    # Bash

    ./config-script.sh

This script will automatically copy all configurations to their respective locations.
Manual or Partial Installation

If you prefer manual or partial installation, follow the instructions below:
Alacritty Configuration

To copy the Alacritty configuration:

```bash cp -r ./alacritty ~/.config/```

Wofi Configuration

To copy the Wofi configuration:

```bash cp -r ./wofi ~/.config/```

Neovim Configuration

To copy the Neovim configuration:

```bash cp -r ./nvim ~/.config/```

Hyprland Configuration

To copy the Hyprland configuration:

```bash   cp -r ./hypr ~/.config/   ```

Alternatively, you can copy specific parts of the Hyprland configuration as needed. The repository includes:

    Hyprland configuration files
    Hyprpaper configuration file
    Hyprcursor theme

Hyprcursor Theme Installation

To install the Hyprcursor theme:

Copy the theme directory to /usr/share/icons/:

```bash sudo cp -r ./hypr/GoogleDot-Black/ /usr/share/icons/```

Set the cursor theme using hyprctl:
Bash

```bash hyprctl setcursor GoogleDot-Black 24```

The 24 represents the cursor size (an integer value). Adjust it to your preferred size.
Please note, that the above command requires sudo permissions for the copy command.
