
# Package Management
# ===================
dpkg -l                         # Output a list of all installed packages.
dpkg -L packageName             # Will list out the files installed and path details for a given package.
dpkg -l | grep -i <edit>        # Return all .deb installed packages with <edit> irrespective of cases.
less /var/lib/dpkg/available    # Return descriptions of all available packages.
