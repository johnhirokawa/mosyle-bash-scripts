# Mosyle Bash Scripts

A collection of Bash scripts designed to automate macOS management tasks via Mosyle MDM. These scripts streamline system maintenance, enhance security, and improve user experience.

## 📜 Available Scripts

- **`Chrome - Cache & Cookies - FORCE`**  
  *Description:*  
  Forcefully clears Chrome cache and cookies for all user profiles without user confirmation. This script ensures that all cached data and cookies are removed, which can help resolve persistent browser issues.

- **`Chrome - Clear Cache & Cookies /w User Confirmation`**  
  *Description:*  
  Prompts the user for confirmation before clearing Chrome cache and cookies for all user profiles. This approach allows users to decide when to clear their data, preventing unexpected session terminations.

## 🚀 How to Deploy via Mosyle MDM

To deploy these scripts using Mosyle MDM, follow these steps:

1. **Log into Mosyle MDM:**
   - Access your Mosyle dashboard.

2. **Navigate to the Scripts Section:**
   - Go to **Management** > **Scripts**.

3. **Add a New Script:**
   - Click on **Add Script**.
   - Enter a descriptive name for the script (e.g., "Chrome - Cache & Cookies - FORCE").

4. **Configure the Script:**
   - Paste the desired script into the script editor.
   - Choose the **Run as** option based on the script's requirements:
     - For scripts that require user interaction (e.g., displaying prompts), select **Logged-in User**.
     - For scripts that do not require user interaction, select **System Administrator**.

5. **Set Execution Frequency:**
   - Determine how often the script should run:
     - **Once per device:** Runs the script a single time on each device.
     - **Once per user:** Runs the script once for each user on a device.
     - **Ongoing:** Runs the script at regular intervals.

6. **Assign the Script to Devices or Groups:**
   - Select the devices or device groups where the script should be deployed.

7. **Save and Deploy:**
   - Click **Save** to store the script.
   - The script will be deployed to the selected devices based on the configured settings.

For detailed instructions and best practices, refer to Mosyle's official documentation: :contentReference[oaicite:0]{index=0}

## 📌 Contributions & Feedback

We welcome contributions to enhance this repository. Feel free to submit pull requests for new scripts or improvements. For feedback or issues, please open an issue on GitHub.

---

🔧 **Maintained by:** *John Hirokawa*  
📌 **License:** MIT

