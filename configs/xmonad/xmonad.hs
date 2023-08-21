{-# OPTIONS_GHC -Wno-deprecations #-}

  -- Base
import XMonad hiding ( (|||) )
import System.Directory
import System.IO (hPutStrLn)
import qualified XMonad.StackSet as W

    -- Actions
import XMonad.Actions.CopyWindow (kill1)
import XMonad.Actions.CycleWS (moveTo, shiftTo, WSType(..), nextScreen, prevScreen)
import XMonad.Actions.GridSelect
import XMonad.Actions.MouseResize
import XMonad.Actions.Promote
import XMonad.Actions.Submap
import XMonad.Actions.Navigation2D (windowGo, windowSwap)
import XMonad.Actions.RotSlaves (rotSlavesDown, rotAllDown)
import XMonad.Actions.WindowMenu (windowMenu)
import qualified XMonad.Actions.TreeSelect as TS
import XMonad.Actions.WindowGo (runOrRaise)
import XMonad.Actions.WithAll (sinkAll, killAll)
import qualified XMonad.Actions.Search as S
import XMonad.Actions.Workscreen (viewWorkscreen)

    -- Data
import Data.Char (isSpace, toUpper, toLower)
import Data.Maybe ( fromJust, isJust )
import Data.Monoid
import Data.Tree
import qualified Data.Map as M

    -- Hooks
import XMonad.Hooks.DynamicLog (dynamicLogWithPP, wrap, xmobarPP, xmobarColor, shorten, PP(..))
import XMonad.Hooks.EwmhDesktops  -- for some fullscreen events, also for xcomposite in obs.
import XMonad.Hooks.FadeInactive
import XMonad.Hooks.ManageDocks (avoidStruts, docksEventHook, manageDocks, ToggleStruts(..))
import XMonad.Hooks.ManageHelpers (isFullscreen, doFullFloat)
import XMonad.Hooks.ServerMode
import XMonad.Hooks.SetWMName
import XMonad.Hooks.WorkspaceHistory

    -- Layouts
import XMonad.Layout.GridVariants (Grid(Grid))
import XMonad.Layout.SimplestFloat
import XMonad.Layout.Spiral
import XMonad.Layout.ResizableTile
import XMonad.Layout.Tabbed
import XMonad.Layout.ThreeColumns

    -- Layouts modifiers
import XMonad.Layout.LayoutModifier
import XMonad.Layout.LayoutCombinators
import XMonad.Layout.LimitWindows (limitWindows, increaseLimit, decreaseLimit)
import XMonad.Layout.Magnifier
import XMonad.Layout.MultiToggle (mkToggle, single, EOT(EOT), (??))
import XMonad.Layout.MultiToggle.Instances (StdTransformers(NBFULL, MIRROR, NOBORDERS))
import XMonad.Layout.NoBorders
import XMonad.Layout.Renamed
import XMonad.Layout.ShowWName
import XMonad.Layout.Simplest
import XMonad.Layout.Spacing
import XMonad.Layout.SubLayouts
import XMonad.Layout.WindowNavigation
import XMonad.Layout.WindowArranger (windowArrange, WindowArrangerMsg(..))
import qualified XMonad.Layout.ToggleLayouts as T (toggleLayouts, ToggleLayout(Toggle))
import qualified XMonad.Layout.MultiToggle as MT (Toggle(..))

    -- Prompt
import XMonad.Prompt
import XMonad.Prompt.Input
import XMonad.Prompt.FuzzyMatch
import XMonad.Prompt.Man
import XMonad.Prompt.Pass
import XMonad.Prompt.Shell
import XMonad.Prompt.Ssh
import XMonad.Prompt.Unicode
import XMonad.Prompt.XMonad
import Control.Arrow (first)

   -- Utilities
import XMonad.Util.EZConfig (additionalKeysP, mkKeymap)
import XMonad.Util.NamedScratchpad
import XMonad.Util.Run (runProcessWithInput, safeSpawn, spawnPipe)
import XMonad.Util.SpawnOnce


import XMonad.Actions.Minimize
import XMonad.Actions.NoBorders
import System.Exit


myFont :: String
myFont = "xft:SauceCodePro Nerd Font Mono:regular:size=9:antialias=true:hinting=true"

myEmojiFont :: String
myEmojiFont = "xft:JoyPixels:regular:size=9:antialias=true:hinting=true"

myModMask :: KeyMask
myModMask = mod4Mask       -- Sets modkey to super/windows key

myTerminal :: String
myTerminal = "alacritty"   -- Sets default terminal

myBrowser :: String
myBrowser = "qutebrowser "               -- Sets qutebrowser as browser for tree select
-- myBrowser = myTerminal ++ " -e lynx " -- Sets lynx as browser for tree select

myEditor :: String
myEditor = "emacsclient -c -a emacs "  -- Sets emacs as editor for tree select
-- myEditor = myTerminal ++ " -e vim "    -- Sets vim as editor for tree select

myBorderWidth :: Dimension
myBorderWidth = 2          -- Sets border width for windows

myNormColor :: String
myNormColor   = "#282c34"  -- Border color of normal windows

myFocusColor :: String
myFocusColor  = "#46d9ff"  -- Border color of focused windows

altMask :: KeyMask
altMask = mod1Mask         -- Setting this for use in xprompts

windowCount :: X (Maybe String)
windowCount = gets $ Just . show . length . W.integrate' . W.stack . W.workspace . W.current . windowset

myStartupHook :: X ()
myStartupHook = do
          -- spawnOnce "lxsession &"
          spawnOnce "autorandr --change work"
          spawnOnce "feh --bg-center ~/.dotfiles/images/bg.jpg"
          spawnOnce "nitrogen --restore &"
          spawnOnce "syncthing --no-browser &"
          spawnOnce "picom --experimental-backends &"
          spawnOnce "unclutter &"
          spawnOnce "/usr/bin/dunst &"
          -- spawnOnce "nm-applet &"
          -- spawnOnce "volumeicon &"
          -- spawnOnce "trayer --edge top --align right --widthtype request --padding 6 --SetDockType true --SetPartialStrut true --expand true --monitor 1 --transparent true --alpha 0 --tint 0x282c34  --height 22 &"
          -- spawnOnce "/usr/bin/emacs --daemon &" -- emacs daemon for the emacsclient
          -- -- spawnOnce "kak -d -s mysession &"  -- kakoune daemon for better performance
          -- -- spawnOnce "urxvtd -q -o -f &"      -- urxvt daemon for better performance
          spawnOnce "touchegg &"
          spawnOnce "light -Ss \"sysfs/leds/platform::micmute\" 0"
          setWMName "LG3D"

myColorizer :: Window -> Bool -> X (String, String)
myColorizer = colorRangeFromClassName
                  (0x28,0x2c,0x34) -- lowest inactive bg
                  (0x28,0x2c,0x34) -- highest inactive bg
                  (0xc7,0x92,0xea) -- active bg
                  (0xc0,0xa7,0x9a) -- inactive fg
                  (0x28,0x2c,0x34) -- active fg



--Makes setting the spacingRaw simpler to write. The spacingRaw module adds a configurable amount of space around windows.
mySpacing :: Integer -> l a -> XMonad.Layout.LayoutModifier.ModifiedLayout Spacing l a
mySpacing i = spacingRaw True (Border i i i i) True (Border i i i i) True

-- setting colors for tabs layout and tabs sublayout.
myTabTheme = def { fontName            = myFont
                 , activeColor         = "#46d9ff"
                 , inactiveColor       = "#313846"
                 , activeBorderColor   = "#46d9ff"
                 , inactiveBorderColor = "#282c34"
                 , activeTextColor     = "#282c34"
                 , inactiveTextColor   = "#d0d0d0"
                 }

tall     = renamed [Replace "tall"]
           $ windowNavigation
           $ addTabs shrinkText myTabTheme
           $ subLayout [] (smartBorders Simplest)
           $ limitWindows 12
           $ mySpacing 8
           $ mkToggle (single MIRROR)
           $ ResizableTall 1 (3/100) (1/2) []

grid     = renamed [Replace "grid"]
           $ smartBorders
           $ windowNavigation
           $ addTabs shrinkText myTabTheme
           $ subLayout [] (smartBorders Simplest)
           $ limitWindows 12
           $ mySpacing 8
           $ mkToggle (single MIRROR)
           $ Grid (16/10)

tabs     = renamed [Replace "tabs"]
           -- I cannot add spacing to this layout because it will
           -- add spacing between window and tabs which looks bad.
           $ tabbed shrinkText myTabTheme
-- grid     = mySpacing 8
--            $ ThreeCol 1 (3/100) (1/2)

-- Theme for showWName which prints current workspace when you change workspaces.
myShowWNameTheme :: SWNConfig
myShowWNameTheme = def
    { swn_font              = "xft:Ubuntu:bold:size=40"
    , swn_fade              = 0.2
    , swn_bgcolor           = "#1c1f24"
    , swn_color             = "#ffffff"
    }

myLayoutHook = avoidStruts $ mouseResize $ windowArrange
               $ mkToggle (NBFULL ?? NOBORDERS ?? EOT) myDefaultLayout
             where
               myDefaultLayout =     smartBorders tall
                                 ||| noBorders tabs
                                 ||| smartBorders grid


myWorkspaces = [" dev ", " sys ", " www ", " aux ", " vbox ", " doc ", " mus ", " vid ", " com "]
myWorkspaceIndices = M.fromList $ zip myWorkspaces [1..]

clickable ws = "<action=xdotool key super+"++show i++">"++ws++"</action>"
    where i = fromJust $ M.lookup ws myWorkspaceIndices

myManageHook :: XMonad.Query (Data.Monoid.Endo WindowSet)
myManageHook = composeAll
     -- 'doFloat' forces a window to float.  Useful for dialog boxes and such.
     -- using 'doShift ( myWorkspaces !! 7)' sends program to workspace 8!
     -- I'm doing it this way because otherwise I would have to write out the full
     -- name of my workspaces and the names would be very long if using clickable workspaces.
     [ className =? "confirm"         --> doFloat
     , className =? "file_progress"   --> doFloat
     , className =? "dialog"          --> doFloat
     , className =? "download"        --> doFloat
     , className =? "error"           --> doFloat
     , className =? "Gimp"            --> doFloat
     , className =? "notification"    --> doFloat
     , className =? "pinentry-gtk-2"  --> doFloat
     , className =? "splash"          --> doFloat
     , className =? "toolbar"         --> doFloat
     , className =? "Onboard"         --> doFloat
     , title =? "Oracle VM VirtualBox Manager"  --> doFloat
     , title =? "Mozilla Firefox"     --> doShift ( myWorkspaces !! 2 )
     , className =? "brave-browser"   --> doShift ( myWorkspaces !! 2 )
     , className =? "qutebrowser"     --> doShift ( myWorkspaces !! 2 )
     , className =? "mpv"             --> doShift ( myWorkspaces !! 7 )
     , className =? "Gimp"            --> doShift ( myWorkspaces !! 8 )
     , className =? "VirtualBox Manager" --> doShift  ( myWorkspaces !! 4 )
     , (className =? "firefox" <&&> resource =? "Dialog") --> doFloat  -- Float Firefox Dialog
     , isFullscreen -->  doFullFloat
     ]

myLogHook :: X ()
myLogHook = fadeInactiveLogHook fadeAmount
    where fadeAmount = 0.8

dtXPConfig :: XPConfig
dtXPConfig = def
      { font                = myFont
      , bgColor             = "#282c34"
      , fgColor             = "#bbc2cf"
      , bgHLight            = "#c792ea"
      , fgHLight            = "#000000"
      , borderColor         = "#535974"
      , promptBorderWidth   = 0
      -- , promptKeymap        = dtXPKeymap
      , position            = Top
      -- , position            = CenteredAt { xpCenterY = 0.3, xpWidth = 0.3 }
      , height              = 23
      , historySize         = 256
      , historyFilter       = id
      , defaultText         = []
      , autoComplete        = Just 100000  -- set Just 100000 for .1 sec
      , showCompletionOnTab = False
      -- , searchPredicate     = isPrefixOf
      , searchPredicate     = fuzzyMatch
      , defaultPrompter     = map toUpper  -- change prompt to UPPER
      -- , defaultPrompter     = unwords . map reverse . words  -- reverse the prompt
      -- , defaultPrompter     = drop 5 .id (++ "XXXX: ")  -- drop first 5 chars of prompt and add XXXX:
      , alwaysHighlight     = True
      , maxComplRows        = Nothing      -- set to 'Just 5' for 5 rows
      }

modalmap :: M.Map (KeyMask, KeySym) (X ()) -> X ()
modalmap s = submap $ M.map (\x -> x >> modalmap s) s


makeLayoutList :: [String] -> [(String, X())]
makeLayoutList = map (\x -> (x, sendMessage $ JumpToLayout $ map toLower x))

selectLayout conf layouts = runSelectedAction conf $ makeLayoutList layouts

gridPrograms = ["emacs", "firefox", "thunar", "arduino", "xournalpp", "gtkwave", "discord", "steam", "waveforms"]

myKeys :: [(String, X ())]
myKeys = [
  ("M-l", nextScreen),
  ("M-k", windows W.focusDown),
  ("M-j", windows W.focusUp),
  ("M-h", prevScreen),
  ("M-;", shellPrompt dtXPConfig),
  ("M-[", withFocused $ windows . W.sink),
  -- ("M-]", withFocused $ windows . W.float . windowset),

  ("M-C-h", sendMessage $ pullGroup L),
  ("M-C-k", sendMessage $ pullGroup U),
  ("M-C-j", sendMessage $ pullGroup D),
  ("M-C-l", sendMessage $ pullGroup R),
  ("M-C-m", withFocused $ sendMessage . MergeAll),
  ("M-C-u", withFocused $ sendMessage . UnMerge),

  ("M-<Space>", sendMessage NextLayout),
  ("M-C-<Space>", selectLayout def ["Tall", "Tabs", "Grid"]),

  ("M-<Return>", spawn myTerminal),
  ("M-g", spawnSelected def gridPrograms),

  ("M-c", kill),
  ("M-C-c", io exitSuccess),

  ("M-f", sendMessage $ MT.Toggle NBFULL),
  ("M-S-m", sendMessage $ MT.Toggle MIRROR),
  ("M-S-<Up>", sendMessage (IncMasterN 1)),
  ("M-S-<Down>", sendMessage (IncMasterN (-1))),
  ("M-C-<Up>", increaseLimit),
  ("M-C-<Down>", decreaseLimit),
  ("M-u", windows W.focusMaster),
  ("M-S-u", windows W.swapMaster),

  -- ("M-6", viewWorkscreen 6),
  -- ("M-2", viewWorkscreen " sys "),

  ("<XF86MonBrightnessDown>", spawn "xbacklight -dec 10%"),
  ("<XF86MonBrightnessUp>", spawn "xbacklight -inc 10%"),

  ("M-p", spawn "xmonad --recompile && xmonad --restart"),
  ("M-o", spawn "/home/jack/.dotfiles/configs/i3/i3clip"),
  ("M-S-s", spawn "/home/jack/.dotfiles/configs/i3/i3clip"), -- Reflects windows
  ("M-S-o", spawn "/home/jack/.dotfiles/configs/i3/i3clip ~/snip.png"),
  ("M-t", modalmap . M.fromList $
  [ ((shiftMask, xK_b), sendMessage ToggleStruts)

  ]),

  ("M-x", modalmap . M.fromList $
  [ ((0, xK_h), spawn "shutdown -h now")
  , ((0, xK_r), spawn "reboot")
  , ((0, xK_l), spawn "/home/jack/.dotfiles/configs/i3/i3exit lock")
  , ((0, xK_e), io exitSuccess )
  ]),


  ("M-b", modalmap . M.fromList $
    [ ((0, xK_j),  spawn "light -U 10")
    , ((0, xK_k),  spawn "light -A 10")
    , ((shiftMask, xK_j),  spawn "light -U 2")
    , ((shiftMask, xK_k),  spawn "light -A 2")
    , ((shiftMask .|. controlMask, xK_j),  spawn "light -U 0.1")
    , ((shiftMask .|. controlMask, xK_k),  spawn "light -A 0.1")
    , ((0, xK_l),  spawn "light -S 100")
    , ((0, xK_h),  spawn "light -Sr 1")
    , ((shiftMask, xK_h),  spawn "light -S 0")
    ]),

  ("M-i", modalmap . M.fromList $
    [ ((0, xK_j),  decWindowSpacing 4)
    , ((0, xK_k),  incWindowSpacing 4)
    , ((0, xK_l),  decScreenSpacing 4)
    , ((0, xK_h),  incScreenSpacing 4)
    ]),

  ("<XF86AudioMute>", spawn $ soundProg ++ " toggle"),
  ("<XF86AudioLowerVolume>", spawn $ soundProg ++ " decrease 10"),
  ("<XF86AudioRaiseVolume>", spawn $ soundProg ++ " increase 10"),

  ("<XF86AudioPlay>", spawn $ musicProg ++ " toggle"),
  ("<XF86AudioStop>", spawn $ musicProg ++ " pause"),
  ("<XF86AudioNext>", spawn $ musicProg ++ " next"),
  ("<XF86AudioPrev>", spawn $ musicProg ++ " previous"),

  ("M-m", modalmap . M.fromList $
    [ ((0, xK_j),  spawn $ soundProg ++ " decrease 10")
    , ((0, xK_k),  spawn $ soundProg ++ " increase 10")
    , ((shiftMask, xK_j),  spawn $ soundProg ++ " decrease 2")
    , ((shiftMask, xK_k),  spawn $ soundProg ++ " increase 2")
    , ((0, xK_l),  spawn $ soundProg ++ " nomute")
    , ((0, xK_h),  spawn $ soundProg ++ " mute")
    , ((0, xK_t),  spawn $ soundProg ++ " toggle")
    ]),

  ("M-y", modalmap . M.fromList $
    [ ((0, xK_i),  spawn $ musicProg ++ " info")
    , ((0, xK_space),  spawn $ musicProg ++ " toggle")
    , ((0, xK_h),  spawn $ musicProg ++ " previous")
    , ((0, xK_j),  spawn $ musicProg ++ " pause")
    , ((0, xK_k),  spawn $ musicProg ++ " play")
    , ((0, xK_l),  spawn $ musicProg ++ " next")
    , ((0, xK_s),  spawn $ musicProg ++ " shuffle-on")
    , ((shiftMask, xK_s),  spawn $ musicProg ++ " shuffle-off")
    , ((0, xK_t),  spawn $ musicProg ++ " loop-track")
    , ((shiftMask, xK_t),  spawn $ musicProg ++ " loop-off")
    , ((0, xK_p),  spawn $ musicProg ++ " loop-playlist")
    , ((shiftMask, xK_p),  spawn $ musicProg ++ " loop-off")
    ])
  ] -- ++ zip (map (\x -> (++) "M-" $ show x) [1..10]) (map W.greedyView [1..10])
  where
    soundProg = "~/.dotfiles/configs/i3/i3volume"
    musicProg = "~/.dotfiles/configs/i3/i3music"

myEventHook = serverModeEventHookCmd
            <+> serverModeEventHook
            <+> docksEventHook
            <+> serverModeEventHookF "XMONAD_COMMAND" defaultServerCommands
  where
                defaultServerCommands "menu-window"   = windowMenu
                defaultServerCommands "menu-progs"    = spawnSelected def gridPrograms
                defaultServerCommands "swap-up"       = windowSwap U False
                defaultServerCommands "swap-down"     = windowSwap D False
                defaultServerCommands "swap-left"     = windowSwap L False
                defaultServerCommands "swap-right"    = windowSwap R False
                -- defaultServerCommands "rotate"     = sendMessage Rotate
                defaultServerCommands "layout-next"   = sendMessage NextLayout



main :: IO ()
main = do
    -- Launching three instances of xmobar on their monitors.
    xmproc0 <- spawnPipe "xmobar -x 1 ~/.config/xmobar/xmobarrc0"
    -- the xmonad, ya know...what the WM is named after!
    xmonad $ ewmh def
        { manageHook = ( isFullscreen --> doFullFloat ) <+> myManageHook <+> manageDocks
        -- Run xmonad commands from command line with "xmonadctl command". Commands include:
        -- shrink, expand, next-layout, default-layout, restart-wm, xterm, kill, refresh, run,
        -- focus-up, focus-down, swap-up, swap-down, swap-master, sink, quit-wm. You can run
        -- "xmonadctl 0" to generate full list of commands written to ~/.xsession-errors.
        -- To compile xmonadctl: ghc -dynamic xmonadctl.hs
        , handleEventHook    = myEventHook
        , modMask            = myModMask
        , terminal           = myTerminal
        , startupHook        = myStartupHook
        , layoutHook         = showWName' myShowWNameTheme myLayoutHook
        , workspaces         = myWorkspaces
        , borderWidth        = myBorderWidth
        , normalBorderColor  = myNormColor
        , focusedBorderColor = myFocusColor
        -- , keys               = \c -> mkKeymap c myKeys
        , logHook = workspaceHistoryHook <+> myLogHook <+> dynamicLogWithPP xmobarPP
                        { ppOutput = \x -> hPutStrLn xmproc0 x
                        , ppCurrent = xmobarColor "#98be65" "" . wrap "[" "]"           -- Current workspace in xmobar
                        , ppVisible = xmobarColor "#98be65" "" . clickable              -- Visible but not current workspace
                        , ppHidden = xmobarColor "#82AAFF" "" . wrap "*" "" . clickable -- Hidden workspaces in xmobar
                        , ppHiddenNoWindows = xmobarColor "#c792ea" ""  . clickable     -- Hidden workspaces (no windows)
                        , ppTitle = xmobarColor "#b3afc2" "" . shorten 60               -- Title of active window in xmobar
                        , ppSep =  "<fc=#666666> <fn=1>|</fn> </fc>"                    -- Separators in xmobar
                        , ppUrgent = xmobarColor "#C45500" "" . wrap "!" "!"            -- Urgent workspace
                        , ppExtras  = [windowCount]                                     -- # of windows current workspace
                        , ppOrder  = \(ws:l:t:ex) -> [ws,l]++ex++[t]
                        }
        } `additionalKeysP` myKeys
        --}
