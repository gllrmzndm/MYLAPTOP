# MY LAPTOP

#### Repository for semi-automatically installing my devices.

[![macbook.jpg](https://i.postimg.cc/SxFW7mgp/macbook.jpg)](https://postimg.cc/2VGbCNpH)

## Chocolatey install

https://chocolatey.org/install

```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

## Rsync

```
rsync -ahvp --exclude-from="/cygdrive/c/Users/guill/rsyncexclude.txt" "/cygdrive/c/Users/guill/" "/cygdrive/f/GUILLERMO"
```

Exclude text for excluding directories.


# Chocolatey export script from Hougaard.com 

choco list -lo -r -y | % { "choco install $($_.SubString(0, $_.IndexOf("|"))) -y" } | Out-File Install.ps1

Source: https://www.hougaard.com/move-my-chocolatey-apps-to-another-pc/

Guillermo Zaandam