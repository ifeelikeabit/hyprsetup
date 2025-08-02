# hyprsetup

**What is this?**

After installing Arch Linux, instead of installing components one by one, you can quickly set up your system by defining them in the `packagelist.sh`, where you can prepare and organize everything in advance. Put in your cfg files or use my files.
Then run the `hyprsetup.sh` script to apply the setup.(If you add own cfg files please take a look at hyprsetup.sh before execute )
 
 **NOTE:** I plan to add a more user-friendly and robust structure soon, but for now, it works fine for me and anyone with a similar setup.

**USAGE**

1. **Clone the repository:**
    ```bash
    git clone https://github.com/ifeelikeabit/hyprsetup.git
    cd hyprsetup
    ```

2. **Add your configuration files or use mine. Then, edit the `packagelist.sh` file to match your setup:**
    ```bash
    #If you add own cfg files , add your subfolders name  into hyprsetup.sh like this
    cp -rv $loc/cfg/YOURFOLDERNAME $HOME/.config/
    ```

3. **Make the `hyprsetup.sh` script executable and run it:**
    ```bash
    chmod +x hyprsetup.sh
    ./hyprsetup.sh
    ```

**IMPORTANT**: These script files were created for my personal setup. If you know what you're doing, you can use them safely.

![Desktop](https://github.com/ifeelikeabit/hyprsetup/raw/main/desktop.jpg)

![Setup Image](https://github.com/ifeelikeabit/hyprsetup/raw/main/os.jpg)


- **Email:** aktasesat80@gmail.com
