## What kind of plugin is 'Block Buy Menu'?
Block Buy menu (BBM) is a tiny and simple AMX Mod X plugin that effectively disabled the buy menu for clients. It is meant to be used in contexts where clients are not to be able to purchase anything, e.g. in Kreedz servers.

## Requirements

* **AMX Mod X 1.9** (not been tested on anything lower, e.g. 1.8.2)
* `fakemeta` module (comes with AMX Mod X)

## How do add the plugin to my server?
Simply generate the `BlockBuyMenu.amxx` file (see below instructions on how to compile `.sma` files), place it in `addons\amxmodx\plugins` and update `addons\amxmodx\configs\plugins.ini` by adding a new line that lists the plugin `BlockBuyMenu.amxx`.

Start the server and run `amx_plugins` in the server console. If you see `[...] Block Buy Menu ... BlockBuyMenu running` as an entry, the plugin should be successfully installed and ready to be used by clients on your server.

## How do I compile my `.sma` script to an `.amxx` file?

* If you're using AMXX-Studio, go into `Tools -> Settings -> Compiler -> Compiler Settings` and set the `Compiler` path to the `amxxpc.exe` located in your servers `addons\amxmodx\scripting` folder.

* Another way to compile your `.sma` script is to copy it to `addons\amxmodx\scripting` then running `compile <name_of_the_script>.sma` in the terminal from directory. The resulting `.amxx` file will be saved in the `addons\amxmodx\scripting\compiled` folder.
