# Mosyle Bash Scripts

A collection of Bash scripts designed to automate macOS management tasks via Mosyle MDM. These scripts streamline system maintenance, enhance security, and improve user experience.

## 📜 Available Scripts

- <a href="https://github.com/johnhirokawa/mosyle-bash-scripts/blob/main/clear_chrome_cache_force.sh"><strong>Chrome - Cache & Cookies - FORCE</strong></a>  
  *Description:*  
  Forcefully clears Chrome cache and cookies for all user profiles without user confirmation. This script ensures that all cached data and cookies are removed, which can help resolve persistent browser issues.

- <a href="https://github.com/johnhirokawa/mosyle-bash-scripts/blob/main/clear_chrome_cache_wprompt.sh"><strong>Chrome - Clear Cache & Cookies /w User Confirmation</strong></a><br>
  *Description:*  
  Prompts the user for confirmation before clearing Chrome cache and cookies for all user profiles. This approach allows users to decide when to clear their data, preventing unexpected session terminations.

## 🚀 How to Deploy via Mosyle MDM

To deploy these scripts using Mosyle MDM, follow these steps:

1. **Log into Mosyle MDM:**
   - Access your Mosyle dashboard.

2. **Navigate to the Scripts Section:**
   - Go to **Management** > **Custom Commands**.

3. **Add a Custom Command:**
   - Click on **Add new profile**.
   - Enter a Profile name for the script (e.g., "Chrome - Cache & Cookies - FORCE").
   - Click into Code box (this will open up the editor).
     
4. **Configure the Script:**
   - Paste the code into editor. From here you can also click "Add to Favorite Scripts" (This allows you to push command 'on demand' to devices).
   - Click on check box at top right corner.

5. **Set Execution Settings:**
   - Click on "Execution Settings" tab
     - In drop down select "Do Not Send" (This makes it so the script doesn't run unless user chooses to run from self-service)

6. **Make available for Self-Service:**
   - Check box for **Show profile in Self-Service, under "Your Scripts" tab**.

7. **Assign the Script to Devices or Groups:**
   - Select **+ Add Assignment**
   - Add assignment based on who you would like the script to be available for.

8. **Save**
   - Click **Save** to save the profile and provision script to the assigned devices.
   - The script will be deployed to the selected devices based on the configured settings.

For detailed instructions and best practices, refer to Mosyle's official documentation: :contentReference[oaicite:0]{index=0}

## 📌 Contributions & Feedback

We welcome contributions to enhance this repository. Feel free to submit pull requests for new scripts or improvements. For feedback or issues, please open an issue on GitHub.

---

🔧 **Maintained by:** *John Hirokawa*  
📌 **License:** MIT

