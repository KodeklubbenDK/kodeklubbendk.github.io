---
layout: post
title: "Getting started with WSL"
subtitle: "Windows Subsystem for Linux"
date: 2020-04-11 13:27:28 +0100
categories: linux
author: sigr
published: true
---

{% assign director = site.authors | where:"short_name", page.author | first %}
{% capture words %}
    {{ page.content | number_of_words | minus: 180}}
{% endcapture %}

<div class="post-header">
    <h1 class="post-title">{{ page.title }}</h1>
    <h3 class="post-subtitle">{{ page.subtitle }}</h3>
    <div class="post-info">
        <h5>{{ page.date | date: "%B %-d, %Y" }}</h5>
        <h5 class="pipe">|</h5>
            {% unless words contains "-" %}
        <h5>{{ words | plus: 180 | divided_by: 180 | append: " minutes to read" }}</h5>
    {% endunless %}
        <h5 class="pipe">|</h5>
        <h5>Written by {{ director.name }}</h5>
    </div>
</div>

<!-- CONTENT STARTS BELOW -->

## WSL

Windows Subsystem for Linux (WSL) enables using the Linux terminal within your Windows system. It is more light weight than running a virtual machine. It is terminal only, so it is not the right option if you want to run programme relying on a graphical user interface. However, you can launch the VS Code editor using WSL. WSL is a great light weight Linux developer tool for Windows users.

## WSL installation

See the official guide by Microsoft or follow the steps below: <https://docs.microsoft.com/en-us/windows/wsl/install-win10>

1. Run the following comman as administator in PowerShell:

``` PowerShell

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

```

2. Restart your computer.

3. Install Ubuntu from the Microsoft Store:
   
   <https://www.microsoft.com/store/productId/9NBLGGH4MSV6>

4. Launch Ubuntu and wait for the installation to complete.

5. Enter your desired username and password.

## Folder navigation

Navigate to your Windows folder system by writing:

``` Bash

cd /mnt

```

Return to the path of the Linux subsystem by writting:

``` Bash

cd ~

```

## Visual Studio Code using WSL

Visual Studio Code ("VS Code" or just "Code" abbreviated) is an editor or light weight IDE. If you have not used it before you can download it here: <https://code.visualstudio.com/>

1. Launch VS Code.
2. Navigate to the Extensions Marketplace.
3. Search for "WSL" or "Remote - WSL" in the marketplace or download the extension here: <https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl>. 
4. Once installed you can now launch it from `View>Command Palette...` the shortcut for opening it is `Ctrl+Shift+P`.
5. The Comman Palette should now seachable in a field in top of the VS Code Window. A `>` should appear in the start of the search field.
6. Search for "Remote-WSL: New Window" and press enter once it has been selected.
7. Launch the terminal within VS Code to check that you are within the WSL environment. Open it using hte menu in `View>Terminal` or by using the shortcut `Ctrl+æ` (Danish keyboards).
8. You should now see a Bash terminal where the name you chose in the WSL installation step should appear.
