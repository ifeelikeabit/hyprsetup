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


2. **How to add your configuration files:**  
1. Copy your configuration files and directories into `hyprsetup/cfg`, or set the path to your config folder in the `source_path` variable in the `env` file.  
2. Add your folder or file names into the `items` variable.  
3. In the `hyprsetup.sh` file, call the function as follows:  

```bash
copycfg $source_path $target_path "${items[@]}"
# You can copy any other config files or folders to different locations using this method.
```
3. **Add your packages into packagelist:**



4. **Make the `hyprsetup.sh` script executable and run it:**
    ```bash
    chmod +x hyprsetup.sh
    ./hyprsetup.sh
    ```

5. **Functions:**
```bash
install_packages "group_name" $variable
install_aur_packages $variable
copycfg $source_path $target_path "${items[@]}"
print 0 "message"  #first variable is color. -1-red 0-none 1-green 2-yellow 3-blue.

    ```

**IMPORTANT**: These script files were created for my personal setup. If you know what you're doing, you can use them safely.

![Desktop](https://github.com/ifeelikeabit/hyprsetup/raw/master/desktop.jpg)



- **Email:** aktasesat80@gmail.com
