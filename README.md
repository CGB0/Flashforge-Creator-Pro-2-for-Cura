# Flashforge Creator Pro 2 for Cura

## Important - please read first!

_April 6, 2021_

Use at your own risk. Do not mix Gcode between versions.  You will break things. 

This version supports Flashforge Creator Pro 2.  It supports only single extrusion by either extruder. It was developed and tested on Cura 4.8 and on a FlashForge Creator Pro 2 on left and right extruders

Disable the unused extruder before slicing to prevent heating and ozzing. 

Extruder 0 is right, extruder 1 is left on the printer. In Cura extruder 1 is right and extruder 2 is left. 

Please, carefully read both Installation and Post Install sections below.

## Changelog

v0.2 (April 13,2021) - Added a new printer defintion _creator_pro_2.Tall.def.json_  which extends the printing height to 165mm.  You could theoretically extend it to 170mm   The Gcode is in the profile. The Start-Code is the same for both printers.  The stop code is not the same.   Do not use the stop code from first version on the second version or you will might drive your models up into your extruders if they don't get out of the way. 

v0.1 (April 6, 2021) - Initial commit

## Description

This is a Cura profile for FlashForge Creator Pro 2. Tested with Cura 4.8 with each extruder to ensure that they both work.

It is based on Eugr's Cura profile on GitHub: https://github.com/eugr/Flashforge-for-Cura

I forked Eugr's repo, modified his definitions files so they fit within the build size of the Creator Pro 2, changed names etc so they all refer to the Creator Pro 2 and will not get mixed up if you happen to have an original FFCP and a FFCP2.

Like Eugr's this is based on the actually hardware parameters for the FFCP2 so there should be no crashing and mangling. The start and end gcode for this printer is completely different from FFCP

This printer does not appear to do relative extrusion.  If you send M83 to put the machine into relative extrusion the machine seems to go a bit catatonic and needs a reboot

I am not sure that the printer likes x3g code.  The .gx files flashforge puts out are a bit of binary to perhaps show an icon on the touch screen but the rest of the file is straight gcode.  Therefore I only export gcode. Your mileage may vary. 

This profile should be plug and play.  It has the required gcode in the definitions/creator_pro_2.def.json file.  As soon as you load it in cura it should be ready to go.  

There is a PETG profile provided that you can load as well.  You may think the temps are a bit cool but the PETG I have only needs 200C and above that it is very stringy.
The profile has a value of 105.263 for the Flow Rate Compensation Factor which fixes a slight under extrusion problem with my printer.  You should verify your extrusion rate. 



## Installation

### Before you begin

.....................................................................................................

These instructions are take directly from Eugr's instructions with minor version modifications

.....................................................................................................

Please download ZIP file and unzip it somewhere on your hard drive. Alternatively you can use `git clone` to checkout the repository.

There are two ways to install the application - into user folder (preferred) and application package itself. Installing into user folder will allow it to survive application updates, but if you have multiple user accounts on your Mac or PC, each user will need to install the profile separately as it will not be visible to all users. In this case you can use alternative method to install the profile globally, however it will not survive application update as application folder will be rewritten during update.

### MacOS 

#### Note for MacOS users

If you save the sliced model as x3g (default for FFCP) and you get an empty file, follow the steps described in this issue to install the required libraries: https://github.com/haskell/haskell-platform/issues/231#issuecomment-177530716  

Or alternatively forget about X3G and use gcode with Octoprint!

#### Into user library (preferred for single-user installations)

This is a preferred way as it should survive application updates.
The easiest way is to use the supplied script. The script will attempt to install profiles into the latest version of Cura installed on your computer.

1. Open Terminal and navigate to unzipped directory. The easiest way to do it is to type `cd` and drag the unzipped folder into that Terminal window and then press Enter.
2. Launch install script by executing `bash ./install.sh`
3. Monitor output for any errors. If no errors are displayed, you are almost done - please refer to post-install section below.

Alternatively, you can do it manually:

1. Open Cura library folder located at `/Users/your_username/Library/Application\ Support/cura/4.8/` (for 4.8.x, for later versions it will be different). 
2. Copy files from definitions, extruders and meshes folders from the downloaded ZIP file (or cloned repository) into the respective folders in Cura. You may need to create `meshes` folder first.
3. Perform steps from post-install section below.

#### Into Application (if you have multiple user accounts on your Mac that will need to use this printer)

1. Open your Applications folder in Finder and right-click on Ultimaker Cura. Click on Show Package Contents.
2. Then go to Contents/Resources/resources and copy files from definitions, extruders and meshes folders from the downloaded ZIP file (or cloned repository) into the respective folders in Cura.
3. Perform steps from post-install section below.

### Linux

Change to unzipped folder and run `bash ./install.sh`

### Windows

#### Into local AppData (preferred for single-user installations)

This is a preferred way as it should survive application updates.

1. Open Cura library folder located at `C:\Users\your_username\AppData\Roaming\cura\4.8` (for 4.8.x, for later versions it will be different). 
2. Copy files from definitions, extruders and meshes folders from the downloaded ZIP file (or cloned repository) into the respective folders in Cura. You may need to create `meshes` folder first.
3. Perform steps from post-install section below.

#### Into application folder (if you have multiple user accounts on your PC that will need to use this printer)

1. Open Cura application resources folder located at `C:\Program Files\Ultimaker Cura 4.4\resources` (for 4.4.x, for later versions it will be different). 
2. Then copy files from definitions, extruders and meshes folders from the downloaded ZIP file (or cloned repository) into the respective folders in Cura. 
3. Perform steps from post-install section below.


## Post-install

1. Launch Cura and click on Add Printer in the printer selection dropdown. You should be able to see FlashForge Creator Pro in the list.
2. Install X3GWriter plugin from the Marketplace menu

BEFORE SLICING, DISABLE UNUSED EXTRUDER if using just one nozzle!

Remember, that in Cura extruder 1 is right and extruder 2 is left. In the gcode extruder 0 is the right extruder and extruder 1 is the left extruder.   The easiest way to disable/enable specific extruder is to go to Settings menu and do it from there as they are named properly in it. 

Please open an issue if you find a bug or something is not working.

Not sure if I will get dual extruding going or not. Right now I don't have a need.  


