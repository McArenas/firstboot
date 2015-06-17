#!/bin/bash 
echo "System Will Require Restart for settings to take effect.
Enter password to continue or Close Terminal to quit.
	"
# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.dotTweaks` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "Macintosh HD"
sudo scutil --set HostName "Macintosh HD"
sudo scutil --set LocalHostName "Macintosh HD"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "Macintosh HD"

##############################################
##################	System	##################
##############################################

# DisableDashboard
Ddefaults write com.apple.dashboard mcx-disabled -bool true

# DisableExpose
defaults write com.apple.Dock mcx-expose-disabled -bool true

# ScrollBarTop&Bottom
defaults write NSGlobalDomain AppleScrollBarVariant -string "DoubleBoth"

# DisableResumeSystemWide
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# DisableAutomaticTerminationInactiveApps
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# Disable“Are you sure you want to open this application?”
defaults write com.apple.LaunchServices LSQuarantine -bool false

# SaveToDiskNotToiCloudByDefault
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# FastKeyboardRepeatRate
defaults write NSGlobalDomain KeyRepeat -int 0

# EnableSubpixelFontRenderingNonAppleLCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# QUARTZ 2D EXTREME
sudo defaults write /Library/Preferences/com.apple.windowserver Quartz2DExtremeEnabled -bool true

# CoreUIinterface
defaults write NSGlobalDomain AppleUseCoreUI -bool true

# DefaultFilePermissionsForNewUser 
sudo defaults delete NSGlobalDomain NSUmask

# AppleShowAllExtensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# DistinguishLegacyACLs
defaults write com.apple.keychainaccess Distinguish\ Legacy\ ACLs -bool true

# DisableWarningWhenChangingFileExtension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# DisableWarningBeforeEmptyingTrash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# ScreenCaptureJpeg
defaults write com.apple.screencapture type -string "jpg"

# DisableShadowInScreenshots
defaults write com.apple.screencapture disable-shadow -bool true

# EnableSubpixelFontRenderingNon-Apple-LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# EnableHiDPIDisplayMode
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

# AutomaticallyQuitPrinter
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# DisableCrashReporter
defaults write com.apple.CrashReporter DialogType -string "none"

# RestartAutomaticallyIfComputerFreezes
systemsetup -setrestartfreeze on

# NeverGoToSleep
systemsetup -setcomputersleep Off > /dev/null

# RequirePasswordImmediatelyAfterSleep
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

##############################################
##################	Finder 	##################
##############################################

# ShowUserLibraryFolder
chflags nohidden ~/Library

# IncreaseWindowResizeSpeed
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# ShowHiddenFilesByDefault
defaults write com.apple.finder AppleShowAllFiles -bool true

# ShowAllFilenameExtensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# ShowStatusBar
defaults write com.apple.finder ShowStatusBar -bool true

# AlwaysShowScrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# EnablePreferColumnView
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# ShowIconsDesktop
defaults write com.apple.finder CreateDesktop -bool true

# ShowCustomIconsForRemovableVolumes
defaults write com.apple.finder ShowCustomIconsForRemovableVolumes -bool true

# ShowCustomIconsForRemoteVolumes
defaults write com.apple.finder ShowCustomIconsForRemoteVolumes -bool true

# AvoidCreating.DS_StoreFilesOnNetworkVolumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# ShowQuitFinder
defaults write com.apple.finder QuitMenuItem -bool true

# disableRememberOpenFinder
defaults write com.apple.finder RestoreWindowState -bool false

# EnablelickThrough
defaults delete com.apple.finder ClickThroughDestroysSelection true

# EnableTextSelection
defaults write com.apple.finder QLEnableTextSelection -bool true

# EnableQuickLookPreview
defaults write com.apple.finder QLEnableXRayFolders -bool true

# DisableQuickLookAnimate
defaults write com.apple.finder QLEnableSlowMotion -bool false

# DisableAnimateInfo
defaults write com.apple.finder AnimateInfoPanes -bool false

# DisableAnimateSnapToGrid
defaults write com.apple.finder AnimateSnapToGrid -bool false

# DisableAnimateWindowsOpening
defaults write com.apple.finder AnimateWindowZoom -bool false

# DisableAllAnimations
defaults write com.apple.finder DisableAllAnimations -bool true

# DisableWindowAnimations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# DisplayFullPOSIXPathAsFinderWindowTitle
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# OpenNewFinderWindowWhenVolumeMounts
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true

# ExpandSavePanelByDefault
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# ExpandPrintPanelByDefault
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# AlwaysShowScrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# MenuBarShowRemainingBattery&HidePercentage
defaults write com.apple.menuextra.battery ShowPercent -string "NO"
defaults write com.apple.menuextra.battery ShowTime -string "YES"

# MenuBarDisableTransparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# MenuBarHideUselessIcons
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu"

# SearchCurrentFolderByDefault
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# DisableWarningWhenChangingFileExtension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# AvoidCreating_.DS_Store_Files_On_NetworkVolumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# AutomaticallyOpenNewFinderWindowWhenVollumeIsMounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# ShowItemInfoBelowIconsOnDesktopAndOtherView
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# EnableSnap-to-GridIconsOnDesktopAndOtherView
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# IncreaseGridSpacingIconsOnDesktopAndOtherView
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist

# IncreaseSizeOfIconsOnDesktopAndOtherView
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 80" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 80" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 80" ~/Library/Preferences/com.apple.finder.plist

# RemoveDropboxGreenCheckmarkInFinder
file=/Applications/Dropbox.app/Contents/Resources/check.icns
[ -e "$file" ] && mv -f "$file" "$file.bak"
unset file

# DisableWarningBeforeEmptyingTrash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

##########################################
##################	Dock ##################
###########################################

# SpeedMissionControlAnimations
defaults write com.apple.dock expose-animation-duration -float 0.1

# DoNotGroupWindowsInMissionControl
defaults write com.apple.dock expose-group-by-app -bool false

# Enable2D_Dock
defaults write com.apple.dock no-glass -bool true

# Suck
defaults write com.apple.dock mineffect -string "suck"

# Enable2Ddock
defaults write com.apple.dock no-glass -bool true

# NewListStack
defaults write com.apple.dock use-new-list-stack -bool true

# NoBounce
defaults write com.apple.dock no-bouncing -bool true

# MinimizeAnimate
defaults write com.apple.dock minimize-128 -bool true

# ShowhiddenApplications
defaults write com.apple.dock showhidden -bool true

# MouseOverMagnification
defaults write com.apple.dock magnification -bool true

# EnableHighlightHoverEffect
defaults write com.apple.dock mouse-over-hilte-stack -bool true

# ShowIndicatorLights
defaults write com.apple.dock show-process-indicators -bool true

# ShowQuitFinder
defaults write com.apple.dock QuitFinder -bool true

# ShowAllFiles
defaults write com.apple.dock AppleShowAllFiles -bool true

# MakeDockIconsOfHiddenApplicationsTranslucent
defaults write com.apple.dock showhidden -bool true

# ResetLaunchpad
find ~/Library/Application\ Support/Dock -name "*.db" -maxdepth 1 -delete

##############################################
################## Terminal ##################
##############################################

# OptionClickToMoveCursor
defaults write com.apple.terminal OptionClickToMoveCursor -bool true

# FocusFollowsMouse
defaults write com.apple.terminal FocusFollowsMouse -bool true

# UTF-8
defaults write com.apple.terminal StringEncodings -array 4

# UseModifiedProThemeByDefault
open "$HOME/init/osx-hacks.terminal"
sleep 1 # Wait a bit to make sure the theme is loaded
defaults write com.apple.terminal "Default Window Settings" -string "OSX-10.8.2"
defaults write com.apple.terminal "Startup Window Settings" -string "OSX-10.8.2"


##############################################
################## 	 X11	##################
##############################################

# AllowClickThrough
defaults write com.apple.x11 wm_click_through -bool true
defaults write org.x.X11 click_through -bool true

# FocusFollowMouse
defaults write com.apple.x11 wm_ffm -bool true
defaults write org.x.X11 wm_ffm -bool true

##############################################
##################  Xcode	##################
##############################################

# GroupBuildFilesBuildConfiguration
defaults write com.apple.dt.Xcode UsePerConfigurationBuildLocations -bool true

# SyntaxColoringUnknownLanguages
defaults write com.apple.dt.Xcode XCColorUnknownLanguages -bool true

# EnableCodeCompletionInPlainText
defaults write com.apple.dt.Xcode XCCodeSenseAllowAutoCompletionInPlainFiles -bool true

# AllowEditingOfCompiledScripts
defaults write com.apple.dt.Xcode ASKAllowEditingOfCompiledScripts -bool true

# AutoClearConsole
defaults write com.apple.dt.Xcode XCAutoClearRunDebugStdIOLogs -bool true

# AlignNewLinesWithPredecessors
defaults write com.apple.dt.Xcode XCMatchIndentWithLineAbove -bool true

##############################################################
################## 	 AddressBook & Mail 	##################
###############################################################

# EnableDebugMenuAddressBook
defaults write com.apple.addressbook ABShowDebugMenu -bool true

# DisableSendAndReplyAnimations
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true

# CopyEmailAddresses=foo@example.com_InsteadOf_Foo Bar_<foo@example.com>
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# AddKeyboardShortcut_(⌘ + Enter)_ToSendEmail
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\\U21a9"

#######################################################
################## 	Preview & TexEdit 	##################
##########################################################

# AppleScriptEnabled
defaults write com.apple.preview NSAppleScriptEnabled -bool true

# UsePlainTextMode
defaults write com.apple.TextEdit RichText -int 0

# OpenAndSaveFilesAs_UTF-8_InTextEdit
defaults write com.apple.TextEdit PlainTextEncoding -int 8
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 8

##############################################
##################	Safari 	##################
##############################################

# DisableSafariOpening‘safe’filesAutomatically
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# EnablePrintingInBackground
defaults write com.apple.safari WebKitShouldPrintBackgroundsPreferenceKey -bool true

# EnableImportMozillaBookmarks
defaults write com.apple.safari NetscapeAndMozillaFavoritesWereImported -bool true

# EnableFancyURLCompletions
defaults write com.apple.safari DebugSafari4IncludeFancyURLCompletionList -bool true

# DNSPrefetchEnable
defaults write com.apple.safari WebKitDNSPrefetchingEnabled -bool true

# AllowHittingBackspaceKeyToGoToPreviousPage
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

# HideSafariBookmarksBar
defaults write com.apple.Safari ShowFavoritesBar -bool false

# MakeSafariSearchBannersDefaulToContain
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# GrammarCheckingEnabled
defaults write com.apple.safari WebGrammarCheckingEnabled -bool true

# Disable SpellCheckingEnable
defaults write com.apple.safari WebContinuousSpellCheckingEnabled -bool false

# EnableEncodingDetector
defaults write com.apple.Safari WebKitUsesEncodingDetector -bool true

# DisableConfirmCloseMultipleTabs
defaults write com.apple.safari ConfirmClosingMultiplePages -bool false

# DisableSafariThumbnailCacheHistory&TopSites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# EnableSafariDebugMenu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# CheckWorldLeaks
defaults write com.apple.safari AlwaysCheckForWorldLeaks -bool true

# DisableAnimatedImages
defaults write com.apple.safari WebKitAllowAnimatedImagesPreferenceKey -bool false

# DisableAnimatedImagesLoops
defaults write com.apple.safari WebKitAllowAnimatedImageLoopingPreferenceKey -bool false

# SetSafariHomePageTo'about:blank`
defaults write com.apple.Safari HomePage -string "about:blank"

# Enable the WebKit Developer Tools in the Mac App Store
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

#############################################
##################	iTunes	##################
#############################################

# Disable_iTunesStoreLinkArrows
defaults write com.apple.iTunes show-store-link-arrows -bool false

# DisableGeniusSidebar
defaults write com.apple.itunes disableGeniusSidebar -bool true

# DisablePingSidebar
defaults write com.apple.iTunes disablePingSidebar -bool true

# HidePingDropdown
defaults write com.apple.iTunes hide-ping-dropdown -bool true

# DisablePing
defaults write com.apple.iTunes disablePing -bool true

# DisableRadioStationsIn_iTunes
defaults write com.apple.iTunes disableRadio -bool true

#########################################################
##################	QuickTimePlayerX	##################
#########################################################

# AllowSimultaneousRecording
defaults write com.apple.QuickTimePlayerX MGAllowMultipleSimultaneousRecordings -bool true

# NoRoundedCorners
defaults write com.apple.QuickTimePlayerX MGCinematicWindowDebugForceNoRoundedCorners -bool true

# NoTitlebar
defaults write com.apple.QuickTimePlayerX MGCinematicWindowDebugForceNoTitlebar -bool true

# NoTitlebar/Controller
defaults write com.apple.QuickTimePlayerX MGUIVisibilityNeverAutoshow -bool true

######################################################
##################	Mac App Store 	##################
######################################################

# Enable the WebKit Developer Tools in the Mac App Store
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

# AppleSoftwareUpdateCheck
defaults delete com.apple.SoftwareUpdate CatalogURL

# Enable Debug Menu in the Mac App Store
defaults write com.apple.appstore ShowDebugMenu -bool true

# CheckSoftwareUpdateDaily
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

###########################################
################## Share ##################
###########################################

# UseShortName
defaults delete NSGlobalDomain com.apple.AppleShareClientCore
sudo defaults delete /Library/Preferences/com.apple.NetworkAuthorization UseShortName

# AllowSSHClient&Server
sudo defaults write /Library/Preferences/com.apple.AppleFileServer SSHTunnel -bool true
defaults delete NSGlobalDomain com.apple.AppleShareClientCore
defaults delete com.apple.AppleShareClientCore afp_ssh_allow

# AllowAddTKeychain
defaults delete NSGlobalDomain com.apple.AppleShareClientCore
defaults delete com.apple.AppleShareClientCore afp_keychain_add

# AdminWithRootPrivileges
sudo defaults delete /Library/Preferences/com.apple.AppleFileServer specialAdminPrivs

# EnableWebSharing
sudo find /Users/* -type d -maxdepth 0 -not \( -type d -name "Shared" -prune \) -exec chmod +a "_www allow execute,read" {} \;

# AllowRootLogIn
sudo defaults write /Library/Preferences/com.apple.AppleFileServer allowRootLogin -bool true

###################################################
################## RemoteDesktop ##################
###################################################

# NoSendSystemKeys
defaults write com.apple.RemoteDesktop DoNotSendSystemKeys -bool true

# ShowShortUserName
defaults write com.apple.remotedesktop showShortUserName -bool true

###################################################
################## ScreenSharing ##################
###################################################

# DisableLocalCheck
defaults write com.apple.ScreenSharing skipLocalAddressCheck -bool true

# NoSendSystemKeys
defaults write com.apple.ScreenSharing DoNotSendSystemKeys -bool true

# ShowBonjourBrowser
defaults write com.apple.ScreenSharing ShowBonjourBrowser_Debug -bool true

# ShowDebug
defaults write com.apple.ScreenSharing debug -bool true

#################################################
################## TimeMachine ##################
#################################################

# DisableLocalTimeMachineBackups
hash tmutil &> /dev/null && sudo tmutil disablelocal

# DisableTMNewDiskMount
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# AllowUnsupportedNetworkVolumes
defaults write com.apple.systempreferences TMShowUnsupportedNetworkVolumes -bool true

#####################################################
################## 	S.S.D. Tweaks 	##################
#####################################################
###### 	!!!! If your using tradintinal H.D.D.	#######
###### 	Comment Out by dding "#" in line ?-?	#######
######################################################

# DisableHibernation 
sudo pmset -a hibernatemode 0 

# DisableWakeFromLidOpen
sudo pmset lidwake 0

# ForceWakeFix
sudo pmset -a sms 0

# RemoveSleepImage
sudo rm /var/vm/sleepimage

# DisableSwap
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.dynamic_pager.plist

# RemoveSwap 
sudo rm /private/var/vm/swapfile*

# DisableWritingHangReportsToDisk"
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.spindump.plist	

##########################################################
##################	Kill Applications	##################
##########################################################

for app in "Address Book" "Calendar" "Contacts" "Dashboard" "Dock" "Finder" \
	"Mail" "Safari" "SystemUIServer" "Terminal" \
	"iTunes" "TimeMachine"; do
	killall "$app" > /dev/null 2>&1
done

# DeleteAll_.DS_onOSXDisk
sudo find / -name ".DS_Store" -depth -exec rm {} \;

# Repair Disk Permissions
sudo diskutil repairPermissions /

# System Optimization
sudo update_dyld_shared_cache -force

sudo shutdown –r +1 'Good Bye!'
