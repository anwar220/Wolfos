# classes3.dex

.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addKeyguardLockedStateListener:I = 0x21

.field static final TRANSACTION_addShellRoot:I = 0x14

.field static final TRANSACTION_addWindowToken:I = 0x11

.field static final TRANSACTION_attachToDisplayContent:I = 0x79

.field static final TRANSACTION_attachWindowContextToDisplayArea:I = 0x77

.field static final TRANSACTION_attachWindowContextToWindowToken:I = 0x78

.field static final TRANSACTION_captureSpecialLayers:I = 0x93

.field static final TRANSACTION_checkAppOnWindowsStatus:I = 0x91

.field static final TRANSACTION_clearForcedDisplayDensityForUser:I = 0xd

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_clearTaskTransitionSpec:I = 0x81

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x4b

.field static final TRANSACTION_closeSystemDialogs:I = 0x24

.field static final TRANSACTION_createInputConsumer:I = 0x53

.field static final TRANSACTION_destroyInputConsumer:I = 0x54

.field static final TRANSACTION_detachWindowContextFromWindowContainer:I = 0x7a

.field static final TRANSACTION_disableKeyguard:I = 0x1b

.field static final TRANSACTION_dismissKeyguard:I = 0x20

.field static final TRANSACTION_enableScreenIfNeeded:I = 0x4a

.field static final TRANSACTION_endProlongedAnimations:I = 0x18

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x1d

.field static final TRANSACTION_freezeDisplayRotation:I = 0x36

.field static final TRANSACTION_freezeRotation:I = 0x33

.field static final TRANSACTION_getAnimationScale:I = 0x25

.field static final TRANSACTION_getAnimationScales:I = 0x26

.field static final TRANSACTION_getAppsOnWindowsStatus:I = 0x92

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getCurrentAnimatorScale:I = 0x29

.field static final TRANSACTION_getCurrentImeTouchRegion:I = 0x55

.field static final TRANSACTION_getDefaultDisplayRotation:I = 0x2f

.field static final TRANSACTION_getDisplayImePolicy:I = 0x66

.field static final TRANSACTION_getDockedStackSide:I = 0x4d

.field static final TRANSACTION_getImeDisplayId:I = 0x7e

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getMiuiFreeFormPositionX:I = 0x8a

.field static final TRANSACTION_getMiuiFreeFormPositionY:I = 0x8b

.field static final TRANSACTION_getNavBarPosition:I = 0x47

.field static final TRANSACTION_getPossibleDisplayInfo:I = 0x6f

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x32

.field static final TRANSACTION_getRemoveContentMode:I = 0x60

.field static final TRANSACTION_getStableInsets:I = 0x51

.field static final TRANSACTION_getSupportedDisplayHashAlgorithms:I = 0x74

.field static final TRANSACTION_getTaskStackContainersSurfaceControl:I = 0x88

.field static final TRANSACTION_getWallpaperAsTarget:I = 0x87

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x4c

.field static final TRANSACTION_getWindowInsets:I = 0x6e

.field static final TRANSACTION_getWindowingMode:I = 0x5e

.field static final TRANSACTION_hasNavigationBar:I = 0x46

.field static final TRANSACTION_hideTransientBars:I = 0x42

.field static final TRANSACTION_holdLock:I = 0x73

.field static final TRANSACTION_isDisplayRotationFrozen:I = 0x38

.field static final TRANSACTION_isKeyguardLocked:I = 0x1e

.field static final TRANSACTION_isKeyguardSecure:I = 0x1f

.field static final TRANSACTION_isLayerTracing:I = 0x69

.field static final TRANSACTION_isRotationFrozen:I = 0x35

.field static final TRANSACTION_isSafeModeEnabled:I = 0x49

.field static final TRANSACTION_isTaskSnapshotSupported:I = 0x7d

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_isWindowToken:I = 0x10

.field static final TRANSACTION_isWindowTraceEnabled:I = 0x5d

.field static final TRANSACTION_launchFlashBackFromBackGroundAnim:I = 0x8c

.field static final TRANSACTION_lockNow:I = 0x48

.field static final TRANSACTION_mirrorDisplay:I = 0x6b

.field static final TRANSACTION_mirrorWallpaperSurface:I = 0x3c

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x16

.field static final TRANSACTION_overridePendingAppTransitionRemote:I = 0x17

.field static final TRANSACTION_reenableKeyguard:I = 0x1c

.field static final TRANSACTION_refreshScreenCaptureDisabled:I = 0x2d

.field static final TRANSACTION_registerCrossWindowBlurEnabledListener:I = 0x7b

.field static final TRANSACTION_registerDisplayFoldListener:I = 0x56

.field static final TRANSACTION_registerDisplayWindowListener:I = 0x58

.field static final TRANSACTION_registerPinnedTaskListener:I = 0x4f

.field static final TRANSACTION_registerShortcutKey:I = 0x52

.field static final TRANSACTION_registerSystemGestureExclusionListener:I = 0x3f

.field static final TRANSACTION_registerTaskFpsCallback:I = 0x82

.field static final TRANSACTION_registerUiModeAnimFinishedCallback:I = 0x89

.field static final TRANSACTION_registerWallpaperVisibilityListener:I = 0x3d

.field static final TRANSACTION_removeKeyguardLockedStateListener:I = 0x22

.field static final TRANSACTION_removeRotationWatcher:I = 0x31

.field static final TRANSACTION_removeWindowToken:I = 0x12

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0x50

.field static final TRANSACTION_requestAssistScreenshot:I = 0x41

.field static final TRANSACTION_requestScrollCapture:I = 0x72

.field static final TRANSACTION_saveWindowTraceToFile:I = 0x5c

.field static final TRANSACTION_screenshotWallpaper:I = 0x3b

.field static final TRANSACTION_setAnimationScale:I = 0x27

.field static final TRANSACTION_setAnimationScales:I = 0x28

.field static final TRANSACTION_setAppResolutionTunerSupport:I = 0x8f

.field static final TRANSACTION_setDisplayHashThrottlingEnabled:I = 0x76

.field static final TRANSACTION_setDisplayImePolicy:I = 0x67

.field static final TRANSACTION_setDisplayWindowInsetsController:I = 0x6c

.field static final TRANSACTION_setDisplayWindowRotationController:I = 0x13

.field static final TRANSACTION_setDockedTaskDividerTouchRegion:I = 0x4e

.field static final TRANSACTION_setEventDispatching:I = 0xf

.field static final TRANSACTION_setFixedToUserRotation:I = 0x39

.field static final TRANSACTION_setForcedDisplayDensityForUser:I = 0xc

.field static final TRANSACTION_setForcedDisplayScalingMode:I = 0xe

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setIgnoreOrientationRequest:I = 0x3a

.field static final TRANSACTION_setInTouchMode:I = 0x2a

.field static final TRANSACTION_setLayerTracing:I = 0x6a

.field static final TRANSACTION_setLayerTracingFlags:I = 0x71

.field static final TRANSACTION_setNavBarVirtualKeyHapticFeedbackEnabled:I = 0x45

.field static final TRANSACTION_setRecentsAppBehindSystemBars:I = 0x85

.field static final TRANSACTION_setRecentsVisibility:I = 0x43

.field static final TRANSACTION_setRemoveContentMode:I = 0x61

.field static final TRANSACTION_setScreenProjectionBlacklist:I = 0x8d

.field static final TRANSACTION_setScreenProjectionList:I = 0x8e

.field static final TRANSACTION_setScreenShareProjectBlackList:I = 0x94

.field static final TRANSACTION_setShellRootAccessibilityWindow:I = 0x15

.field static final TRANSACTION_setShouldShowSystemDecors:I = 0x65

.field static final TRANSACTION_setShouldShowWithInsecureKeyguard:I = 0x63

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x2c

.field static final TRANSACTION_setSwitchingUser:I = 0x23

.field static final TRANSACTION_setTaskSnapshotEnabled:I = 0x7f

.field static final TRANSACTION_setTaskTransitionSpec:I = 0x80

.field static final TRANSACTION_setWallpaperAsTarget:I = 0x86

.field static final TRANSACTION_setWindowingMode:I = 0x5f

.field static final TRANSACTION_shouldShowSystemDecors:I = 0x64

.field static final TRANSACTION_shouldShowWithInsecureKeyguard:I = 0x62

.field static final TRANSACTION_showGlobalActions:I = 0x70

.field static final TRANSACTION_showStrictModeViolation:I = 0x2b

.field static final TRANSACTION_snapshotTaskForRecents:I = 0x84

.field static final TRANSACTION_startFreezingScreen:I = 0x19

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_startWindowTrace:I = 0x5a

.field static final TRANSACTION_stopFreezingScreen:I = 0x1a

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_stopWindowTrace:I = 0x5b

.field static final TRANSACTION_syncInputTransactions:I = 0x68

.field static final TRANSACTION_thawDisplayRotation:I = 0x37

.field static final TRANSACTION_thawRotation:I = 0x34

.field static final TRANSACTION_unregisterCrossWindowBlurEnabledListener:I = 0x7c

.field static final TRANSACTION_unregisterDisplayFoldListener:I = 0x57

.field static final TRANSACTION_unregisterDisplayWindowListener:I = 0x59

.field static final TRANSACTION_unregisterSystemGestureExclusionListener:I = 0x40

.field static final TRANSACTION_unregisterTaskFpsCallback:I = 0x83

.field static final TRANSACTION_unregisterWallpaperVisibilityListener:I = 0x3e

.field static final TRANSACTION_updateDisplayWindowRequestedVisibilities:I = 0x6d

.field static final TRANSACTION_updateResolutionTunerConfig:I = 0x90

.field static final TRANSACTION_updateRotation:I = 0x2e

.field static final TRANSACTION_updateStaticPrivacyIndicatorBounds:I = 0x44

.field static final TRANSACTION_useBLAST:I = 0x5

.field static final TRANSACTION_verifyDisplayHash:I = 0x75

.field static final TRANSACTION_watchRotation:I = 0x30


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.view.IWindowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/view/IWindowManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_222

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x94
    const-string/jumbo v0, "setScreenShareProjectBlackList"

    return-object v0

    :pswitch_9  #0x93
    const-string v0, "captureSpecialLayers"

    return-object v0

    :pswitch_c  #0x92
    const-string v0, "getAppsOnWindowsStatus"

    return-object v0

    :pswitch_f  #0x91
    const-string v0, "checkAppOnWindowsStatus"

    return-object v0

    :pswitch_12  #0x90
    const-string/jumbo v0, "updateResolutionTunerConfig"

    return-object v0

    :pswitch_16  #0x8f
    const-string/jumbo v0, "setAppResolutionTunerSupport"

    return-object v0

    :pswitch_1a  #0x8e
    const-string/jumbo v0, "setScreenProjectionList"

    return-object v0

    :pswitch_1e  #0x8d
    const-string/jumbo v0, "setScreenProjectionBlacklist"

    return-object v0

    :pswitch_22  #0x8c
    const-string/jumbo v0, "launchFlashBackFromBackGroundAnim"

    return-object v0

    :pswitch_26  #0x8b
    const-string v0, "getMiuiFreeFormPositionY"

    return-object v0

    :pswitch_29  #0x8a
    const-string v0, "getMiuiFreeFormPositionX"

    return-object v0

    :pswitch_2c  #0x89
    const-string/jumbo v0, "registerUiModeAnimFinishedCallback"

    return-object v0

    :pswitch_30  #0x88
    const-string v0, "getTaskStackContainersSurfaceControl"

    return-object v0

    :pswitch_33  #0x87
    const-string v0, "getWallpaperAsTarget"

    return-object v0

    :pswitch_36  #0x86
    const-string/jumbo v0, "setWallpaperAsTarget"

    return-object v0

    :pswitch_3a  #0x85
    const-string/jumbo v0, "setRecentsAppBehindSystemBars"

    return-object v0

    :pswitch_3e  #0x84
    const-string/jumbo v0, "snapshotTaskForRecents"

    return-object v0

    :pswitch_42  #0x83
    const-string/jumbo v0, "unregisterTaskFpsCallback"

    return-object v0

    :pswitch_46  #0x82
    const-string/jumbo v0, "registerTaskFpsCallback"

    return-object v0

    :pswitch_4a  #0x81
    const-string v0, "clearTaskTransitionSpec"

    return-object v0

    :pswitch_4d  #0x80
    const-string/jumbo v0, "setTaskTransitionSpec"

    return-object v0

    :pswitch_51  #0x7f
    const-string/jumbo v0, "setTaskSnapshotEnabled"

    return-object v0

    :pswitch_55  #0x7e
    const-string v0, "getImeDisplayId"

    return-object v0

    :pswitch_58  #0x7d
    const-string/jumbo v0, "isTaskSnapshotSupported"

    return-object v0

    :pswitch_5c  #0x7c
    const-string/jumbo v0, "unregisterCrossWindowBlurEnabledListener"

    return-object v0

    :pswitch_60  #0x7b
    const-string/jumbo v0, "registerCrossWindowBlurEnabledListener"

    return-object v0

    :pswitch_64  #0x7a
    const-string v0, "detachWindowContextFromWindowContainer"

    return-object v0

    :pswitch_67  #0x79
    const-string v0, "attachToDisplayContent"

    return-object v0

    :pswitch_6a  #0x78
    const-string v0, "attachWindowContextToWindowToken"

    return-object v0

    :pswitch_6d  #0x77
    const-string v0, "attachWindowContextToDisplayArea"

    return-object v0

    :pswitch_70  #0x76
    const-string/jumbo v0, "setDisplayHashThrottlingEnabled"

    return-object v0

    :pswitch_74  #0x75
    const-string/jumbo v0, "verifyDisplayHash"

    return-object v0

    :pswitch_78  #0x74
    const-string v0, "getSupportedDisplayHashAlgorithms"

    return-object v0

    :pswitch_7b  #0x73
    const-string/jumbo v0, "holdLock"

    return-object v0

    :pswitch_7f  #0x72
    const-string/jumbo v0, "requestScrollCapture"

    return-object v0

    :pswitch_83  #0x71
    const-string/jumbo v0, "setLayerTracingFlags"

    return-object v0

    :pswitch_87  #0x70
    const-string/jumbo v0, "showGlobalActions"

    return-object v0

    :pswitch_8b  #0x6f
    const-string v0, "getPossibleDisplayInfo"

    return-object v0

    :pswitch_8e  #0x6e
    const-string v0, "getWindowInsets"

    return-object v0

    :pswitch_91  #0x6d
    const-string/jumbo v0, "updateDisplayWindowRequestedVisibilities"

    return-object v0

    :pswitch_95  #0x6c
    const-string/jumbo v0, "setDisplayWindowInsetsController"

    return-object v0

    :pswitch_99  #0x6b
    const-string/jumbo v0, "mirrorDisplay"

    return-object v0

    :pswitch_9d  #0x6a
    const-string/jumbo v0, "setLayerTracing"

    return-object v0

    :pswitch_a1  #0x69
    const-string/jumbo v0, "isLayerTracing"

    return-object v0

    :pswitch_a5  #0x68
    const-string/jumbo v0, "syncInputTransactions"

    return-object v0

    :pswitch_a9  #0x67
    const-string/jumbo v0, "setDisplayImePolicy"

    return-object v0

    :pswitch_ad  #0x66
    const-string v0, "getDisplayImePolicy"

    return-object v0

    :pswitch_b0  #0x65
    const-string/jumbo v0, "setShouldShowSystemDecors"

    return-object v0

    :pswitch_b4  #0x64
    const-string/jumbo v0, "shouldShowSystemDecors"

    return-object v0

    :pswitch_b8  #0x63
    const-string/jumbo v0, "setShouldShowWithInsecureKeyguard"

    return-object v0

    :pswitch_bc  #0x62
    const-string/jumbo v0, "shouldShowWithInsecureKeyguard"

    return-object v0

    :pswitch_c0  #0x61
    const-string/jumbo v0, "setRemoveContentMode"

    return-object v0

    :pswitch_c4  #0x60
    const-string v0, "getRemoveContentMode"

    return-object v0

    :pswitch_c7  #0x5f
    const-string/jumbo v0, "setWindowingMode"

    return-object v0

    :pswitch_cb  #0x5e
    const-string v0, "getWindowingMode"

    return-object v0

    :pswitch_ce  #0x5d
    const-string/jumbo v0, "isWindowTraceEnabled"

    return-object v0

    :pswitch_d2  #0x5c
    const-string/jumbo v0, "saveWindowTraceToFile"

    return-object v0

    :pswitch_d6  #0x5b
    const-string/jumbo v0, "stopWindowTrace"

    return-object v0

    :pswitch_da  #0x5a
    const-string/jumbo v0, "startWindowTrace"

    return-object v0

    :pswitch_de  #0x59
    const-string/jumbo v0, "unregisterDisplayWindowListener"

    return-object v0

    :pswitch_e2  #0x58
    const-string/jumbo v0, "registerDisplayWindowListener"

    return-object v0

    :pswitch_e6  #0x57
    const-string/jumbo v0, "unregisterDisplayFoldListener"

    return-object v0

    :pswitch_ea  #0x56
    const-string/jumbo v0, "registerDisplayFoldListener"

    return-object v0

    :pswitch_ee  #0x55
    const-string v0, "getCurrentImeTouchRegion"

    return-object v0

    :pswitch_f1  #0x54
    const-string v0, "destroyInputConsumer"

    return-object v0

    :pswitch_f4  #0x53
    const-string v0, "createInputConsumer"

    return-object v0

    :pswitch_f7  #0x52
    const-string/jumbo v0, "registerShortcutKey"

    return-object v0

    :pswitch_fb  #0x51
    const-string v0, "getStableInsets"

    return-object v0

    :pswitch_fe  #0x50
    const-string/jumbo v0, "requestAppKeyboardShortcuts"

    return-object v0

    :pswitch_102  #0x4f
    const-string/jumbo v0, "registerPinnedTaskListener"

    return-object v0

    :pswitch_106  #0x4e
    const-string/jumbo v0, "setDockedTaskDividerTouchRegion"

    return-object v0

    :pswitch_10a  #0x4d
    const-string v0, "getDockedStackSide"

    return-object v0

    :pswitch_10d  #0x4c
    const-string v0, "getWindowContentFrameStats"

    return-object v0

    :pswitch_110  #0x4b
    const-string v0, "clearWindowContentFrameStats"

    return-object v0

    :pswitch_113  #0x4a
    const-string v0, "enableScreenIfNeeded"

    return-object v0

    :pswitch_116  #0x49
    const-string/jumbo v0, "isSafeModeEnabled"

    return-object v0

    :pswitch_11a  #0x48
    const-string/jumbo v0, "lockNow"

    return-object v0

    :pswitch_11e  #0x47
    const-string v0, "getNavBarPosition"

    return-object v0

    :pswitch_121  #0x46
    const-string v0, "hasNavigationBar"

    return-object v0

    :pswitch_124  #0x45
    const-string/jumbo v0, "setNavBarVirtualKeyHapticFeedbackEnabled"

    return-object v0

    :pswitch_128  #0x44
    const-string/jumbo v0, "updateStaticPrivacyIndicatorBounds"

    return-object v0

    :pswitch_12c  #0x43
    const-string/jumbo v0, "setRecentsVisibility"

    return-object v0

    :pswitch_130  #0x42
    const-string v0, "hideTransientBars"

    return-object v0

    :pswitch_133  #0x41
    const-string/jumbo v0, "requestAssistScreenshot"

    return-object v0

    :pswitch_137  #0x40
    const-string/jumbo v0, "unregisterSystemGestureExclusionListener"

    return-object v0

    :pswitch_13b  #0x3f
    const-string/jumbo v0, "registerSystemGestureExclusionListener"

    return-object v0

    :pswitch_13f  #0x3e
    const-string/jumbo v0, "unregisterWallpaperVisibilityListener"

    return-object v0

    :pswitch_143  #0x3d
    const-string/jumbo v0, "registerWallpaperVisibilityListener"

    return-object v0

    :pswitch_147  #0x3c
    const-string/jumbo v0, "mirrorWallpaperSurface"

    return-object v0

    :pswitch_14b  #0x3b
    const-string/jumbo v0, "screenshotWallpaper"

    return-object v0

    :pswitch_14f  #0x3a
    const-string/jumbo v0, "setIgnoreOrientationRequest"

    return-object v0

    :pswitch_153  #0x39
    const-string/jumbo v0, "setFixedToUserRotation"

    return-object v0

    :pswitch_157  #0x38
    const-string/jumbo v0, "isDisplayRotationFrozen"

    return-object v0

    :pswitch_15b  #0x37
    const-string/jumbo v0, "thawDisplayRotation"

    return-object v0

    :pswitch_15f  #0x36
    const-string v0, "freezeDisplayRotation"

    return-object v0

    :pswitch_162  #0x35
    const-string/jumbo v0, "isRotationFrozen"

    return-object v0

    :pswitch_166  #0x34
    const-string/jumbo v0, "thawRotation"

    return-object v0

    :pswitch_16a  #0x33
    const-string v0, "freezeRotation"

    return-object v0

    :pswitch_16d  #0x32
    const-string v0, "getPreferredOptionsPanelGravity"

    return-object v0

    :pswitch_170  #0x31
    const-string/jumbo v0, "removeRotationWatcher"

    return-object v0

    :pswitch_174  #0x30
    const-string/jumbo v0, "watchRotation"

    return-object v0

    :pswitch_178  #0x2f
    const-string v0, "getDefaultDisplayRotation"

    return-object v0

    :pswitch_17b  #0x2e
    const-string/jumbo v0, "updateRotation"

    return-object v0

    :pswitch_17f  #0x2d
    const-string/jumbo v0, "refreshScreenCaptureDisabled"

    return-object v0

    :pswitch_183  #0x2c
    const-string/jumbo v0, "setStrictModeVisualIndicatorPreference"

    return-object v0

    :pswitch_187  #0x2b
    const-string/jumbo v0, "showStrictModeViolation"

    return-object v0

    :pswitch_18b  #0x2a
    const-string/jumbo v0, "setInTouchMode"

    return-object v0

    :pswitch_18f  #0x29
    const-string v0, "getCurrentAnimatorScale"

    return-object v0

    :pswitch_192  #0x28
    const-string/jumbo v0, "setAnimationScales"

    return-object v0

    :pswitch_196  #0x27
    const-string/jumbo v0, "setAnimationScale"

    return-object v0

    :pswitch_19a  #0x26
    const-string v0, "getAnimationScales"

    return-object v0

    :pswitch_19d  #0x25
    const-string v0, "getAnimationScale"

    return-object v0

    :pswitch_1a0  #0x24
    const-string v0, "closeSystemDialogs"

    return-object v0

    :pswitch_1a3  #0x23
    const-string/jumbo v0, "setSwitchingUser"

    return-object v0

    :pswitch_1a7  #0x22
    const-string/jumbo v0, "removeKeyguardLockedStateListener"

    return-object v0

    :pswitch_1ab  #0x21
    const-string v0, "addKeyguardLockedStateListener"

    return-object v0

    :pswitch_1ae  #0x20
    const-string v0, "dismissKeyguard"

    return-object v0

    :pswitch_1b1  #0x1f
    const-string/jumbo v0, "isKeyguardSecure"

    return-object v0

    :pswitch_1b5  #0x1e
    const-string/jumbo v0, "isKeyguardLocked"

    return-object v0

    :pswitch_1b9  #0x1d
    const-string v0, "exitKeyguardSecurely"

    return-object v0

    :pswitch_1bc  #0x1c
    const-string/jumbo v0, "reenableKeyguard"

    return-object v0

    :pswitch_1c0  #0x1b
    const-string v0, "disableKeyguard"

    return-object v0

    :pswitch_1c3  #0x1a
    const-string/jumbo v0, "stopFreezingScreen"

    return-object v0

    :pswitch_1c7  #0x19
    const-string/jumbo v0, "startFreezingScreen"

    return-object v0

    :pswitch_1cb  #0x18
    const-string v0, "endProlongedAnimations"

    return-object v0

    :pswitch_1ce  #0x17
    const-string/jumbo v0, "overridePendingAppTransitionRemote"

    return-object v0

    :pswitch_1d2  #0x16
    const-string/jumbo v0, "overridePendingAppTransitionMultiThumbFuture"

    return-object v0

    :pswitch_1d6  #0x15
    const-string/jumbo v0, "setShellRootAccessibilityWindow"

    return-object v0

    :pswitch_1da  #0x14
    const-string v0, "addShellRoot"

    return-object v0

    :pswitch_1dd  #0x13
    const-string/jumbo v0, "setDisplayWindowRotationController"

    return-object v0

    :pswitch_1e1  #0x12
    const-string/jumbo v0, "removeWindowToken"

    return-object v0

    :pswitch_1e5  #0x11
    const-string v0, "addWindowToken"

    return-object v0

    :pswitch_1e8  #0x10
    const-string/jumbo v0, "isWindowToken"

    return-object v0

    :pswitch_1ec  #0xf
    const-string/jumbo v0, "setEventDispatching"

    return-object v0

    :pswitch_1f0  #0xe
    const-string/jumbo v0, "setForcedDisplayScalingMode"

    return-object v0

    :pswitch_1f4  #0xd
    const-string v0, "clearForcedDisplayDensityForUser"

    return-object v0

    :pswitch_1f7  #0xc
    const-string/jumbo v0, "setForcedDisplayDensityForUser"

    return-object v0

    :pswitch_1fb  #0xb
    const-string v0, "getBaseDisplayDensity"

    return-object v0

    :pswitch_1fe  #0xa
    const-string v0, "getInitialDisplayDensity"

    return-object v0

    :pswitch_201  #0x9
    const-string v0, "clearForcedDisplaySize"

    return-object v0

    :pswitch_204  #0x8
    const-string/jumbo v0, "setForcedDisplaySize"

    return-object v0

    :pswitch_208  #0x7
    const-string v0, "getBaseDisplaySize"

    return-object v0

    :pswitch_20b  #0x6
    const-string v0, "getInitialDisplaySize"

    return-object v0

    :pswitch_20e  #0x5
    const-string/jumbo v0, "useBLAST"

    return-object v0

    :pswitch_212  #0x4
    const-string/jumbo v0, "openSession"

    return-object v0

    :pswitch_216  #0x3
    const-string/jumbo v0, "isViewServerRunning"

    return-object v0

    :pswitch_21a  #0x2
    const-string/jumbo v0, "stopViewServer"

    return-object v0

    :pswitch_21e  #0x1
    const-string/jumbo v0, "startViewServer"

    return-object v0

    :pswitch_data_222
    .packed-switch 0x1
        :pswitch_21e  #00000001
        :pswitch_21a  #00000002
        :pswitch_216  #00000003
        :pswitch_212  #00000004
        :pswitch_20e  #00000005
        :pswitch_20b  #00000006
        :pswitch_208  #00000007
        :pswitch_204  #00000008
        :pswitch_201  #00000009
        :pswitch_1fe  #0000000a
        :pswitch_1fb  #0000000b
        :pswitch_1f7  #0000000c
        :pswitch_1f4  #0000000d
        :pswitch_1f0  #0000000e
        :pswitch_1ec  #0000000f
        :pswitch_1e8  #00000010
        :pswitch_1e5  #00000011
        :pswitch_1e1  #00000012
        :pswitch_1dd  #00000013
        :pswitch_1da  #00000014
        :pswitch_1d6  #00000015
        :pswitch_1d2  #00000016
        :pswitch_1ce  #00000017
        :pswitch_1cb  #00000018
        :pswitch_1c7  #00000019
        :pswitch_1c3  #0000001a
        :pswitch_1c0  #0000001b
        :pswitch_1bc  #0000001c
        :pswitch_1b9  #0000001d
        :pswitch_1b5  #0000001e
        :pswitch_1b1  #0000001f
        :pswitch_1ae  #00000020
        :pswitch_1ab  #00000021
        :pswitch_1a7  #00000022
        :pswitch_1a3  #00000023
        :pswitch_1a0  #00000024
        :pswitch_19d  #00000025
        :pswitch_19a  #00000026
        :pswitch_196  #00000027
        :pswitch_192  #00000028
        :pswitch_18f  #00000029
        :pswitch_18b  #0000002a
        :pswitch_187  #0000002b
        :pswitch_183  #0000002c
        :pswitch_17f  #0000002d
        :pswitch_17b  #0000002e
        :pswitch_178  #0000002f
        :pswitch_174  #00000030
        :pswitch_170  #00000031
        :pswitch_16d  #00000032
        :pswitch_16a  #00000033
        :pswitch_166  #00000034
        :pswitch_162  #00000035
        :pswitch_15f  #00000036
        :pswitch_15b  #00000037
        :pswitch_157  #00000038
        :pswitch_153  #00000039
        :pswitch_14f  #0000003a
        :pswitch_14b  #0000003b
        :pswitch_147  #0000003c
        :pswitch_143  #0000003d
        :pswitch_13f  #0000003e
        :pswitch_13b  #0000003f
        :pswitch_137  #00000040
        :pswitch_133  #00000041
        :pswitch_130  #00000042
        :pswitch_12c  #00000043
        :pswitch_128  #00000044
        :pswitch_124  #00000045
        :pswitch_121  #00000046
        :pswitch_11e  #00000047
        :pswitch_11a  #00000048
        :pswitch_116  #00000049
        :pswitch_113  #0000004a
        :pswitch_110  #0000004b
        :pswitch_10d  #0000004c
        :pswitch_10a  #0000004d
        :pswitch_106  #0000004e
        :pswitch_102  #0000004f
        :pswitch_fe  #00000050
        :pswitch_fb  #00000051
        :pswitch_f7  #00000052
        :pswitch_f4  #00000053
        :pswitch_f1  #00000054
        :pswitch_ee  #00000055
        :pswitch_ea  #00000056
        :pswitch_e6  #00000057
        :pswitch_e2  #00000058
        :pswitch_de  #00000059
        :pswitch_da  #0000005a
        :pswitch_d6  #0000005b
        :pswitch_d2  #0000005c
        :pswitch_ce  #0000005d
        :pswitch_cb  #0000005e
        :pswitch_c7  #0000005f
        :pswitch_c4  #00000060
        :pswitch_c0  #00000061
        :pswitch_bc  #00000062
        :pswitch_b8  #00000063
        :pswitch_b4  #00000064
        :pswitch_b0  #00000065
        :pswitch_ad  #00000066
        :pswitch_a9  #00000067
        :pswitch_a5  #00000068
        :pswitch_a1  #00000069
        :pswitch_9d  #0000006a
        :pswitch_99  #0000006b
        :pswitch_95  #0000006c
        :pswitch_91  #0000006d
        :pswitch_8e  #0000006e
        :pswitch_8b  #0000006f
        :pswitch_87  #00000070
        :pswitch_83  #00000071
        :pswitch_7f  #00000072
        :pswitch_7b  #00000073
        :pswitch_78  #00000074
        :pswitch_74  #00000075
        :pswitch_70  #00000076
        :pswitch_6d  #00000077
        :pswitch_6a  #00000078
        :pswitch_67  #00000079
        :pswitch_64  #0000007a
        :pswitch_60  #0000007b
        :pswitch_5c  #0000007c
        :pswitch_58  #0000007d
        :pswitch_55  #0000007e
        :pswitch_51  #0000007f
        :pswitch_4d  #00000080
        :pswitch_4a  #00000081
        :pswitch_46  #00000082
        :pswitch_42  #00000083
        :pswitch_3e  #00000084
        :pswitch_3a  #00000085
        :pswitch_36  #00000086
        :pswitch_33  #00000087
        :pswitch_30  #00000088
        :pswitch_2c  #00000089
        :pswitch_29  #0000008a
        :pswitch_26  #0000008b
        :pswitch_22  #0000008c
        :pswitch_1e  #0000008d
        :pswitch_1a  #0000008e
        :pswitch_16  #0000008f
        :pswitch_12  #00000090
        :pswitch_f  #00000091
        :pswitch_c  #00000092
        :pswitch_9  #00000093
        :pswitch_5  #00000094
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x93

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.view.IWindowManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_a8e

    packed-switch p1, :pswitch_data_a94

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x94
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setScreenShareProjectBlackList(Ljava/util/List;)V

    goto/16 :goto_a8d

    :pswitch_28  #0x93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->captureSpecialLayers(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_3b  #0x92
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAppsOnWindowsStatus()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_a8d

    :pswitch_47  #0x91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->checkAppOnWindowsStatus(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_5a  #0x90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->updateResolutionTunerConfig(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_6d  #0x8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAppResolutionTunerSupport(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_7c  #0x8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setScreenProjectionList(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_8f  #0x8d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setScreenProjectionBlacklist(Ljava/util/List;)V

    goto/16 :goto_a8d

    :pswitch_9b  #0x8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->launchFlashBackFromBackGroundAnim(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_aa  #0x8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getMiuiFreeFormPositionY(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a8d

    :pswitch_bd  #0x8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getMiuiFreeFormPositionX(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a8d

    :pswitch_d0  #0x89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowAnimationFinishedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowAnimationFinishedCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerUiModeAnimFinishedCallback(Landroid/view/IWindowAnimationFinishedCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_e3  #0x88
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getTaskStackContainersSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_ef  #0x87
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getWallpaperAsTarget()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_fb  #0x86
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setWallpaperAsTarget(Z)V

    goto/16 :goto_a8d

    :pswitch_107  #0x85
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setRecentsAppBehindSystemBars(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_116  #0x84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->snapshotTaskForRecents(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_129  #0x83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterTaskFpsCallback(Landroid/window/ITaskFpsCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_13c  #0x82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerTaskFpsCallback(ILandroid/window/ITaskFpsCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_153  #0x81
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->clearTaskTransitionSpec()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_15b  #0x80
    sget-object v2, Landroid/view/TaskTransitionSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/TaskTransitionSpec;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setTaskTransitionSpec(Landroid/view/TaskTransitionSpec;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_16e  #0x7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setTaskSnapshotEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_17d  #0x7e
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getImeDisplayId()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a8d

    :pswitch_189  #0x7d
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isTaskSnapshotSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_195  #0x7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_1a8  #0x7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_1bf  #0x7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->detachWindowContextFromWindowContainer(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_1ce  #0x79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->attachToDisplayContent(Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_1e5  #0x78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->attachWindowContextToWindowToken(Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_1f8  #0x77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->attachWindowContextToDisplayArea(Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_21b  #0x76
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setDisplayHashThrottlingEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_22a  #0x75
    sget-object v2, Landroid/view/displayhash/DisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/displayhash/DisplayHash;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_241  #0x74
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getSupportedDisplayHashAlgorithms()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_a8d

    :pswitch_24d  #0x73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_260  #0x72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->requestScrollCapture(ILandroid/os/IBinder;ILandroid/view/IScrollCaptureResponseListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_27f  #0x71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setLayerTracingFlags(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_28e  #0x70
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->showGlobalActions()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_296  #0x6f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getPossibleDisplayInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a8d

    :pswitch_2ad  #0x6e
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-instance v4, Landroid/view/InsetsState;

    invoke-direct {v4}, Landroid/view/InsetsState;-><init>()V

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->getWindowInsets(Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_2d0  #0x6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsVisibilities;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateDisplayWindowRequestedVisibilities(ILandroid/view/InsetsVisibilities;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_2e7  #0x6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IDisplayWindowInsetsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowInsetsController;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_2fe  #0x6b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Landroid/view/SurfaceControl;

    invoke-direct {v3}, Landroid/view/SurfaceControl;-><init>()V

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->mirrorDisplay(ILandroid/view/SurfaceControl;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_319  #0x6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setLayerTracing(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_328  #0x69
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isLayerTracing()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_334  #0x68
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->syncInputTransactions(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_343  #0x67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setDisplayImePolicy(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_356  #0x66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDisplayImePolicy(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a8d

    :pswitch_369  #0x65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setShouldShowSystemDecors(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_37c  #0x64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->shouldShowSystemDecors(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_38f  #0x63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setShouldShowWithInsecureKeyguard(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_3a2  #0x62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->shouldShowWithInsecureKeyguard(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_3b5  #0x61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setRemoveContentMode(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_3c8  #0x60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getRemoveContentMode(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a8d

    :pswitch_3db  #0x5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setWindowingMode(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_3ee  #0x5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getWindowingMode(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a8d

    :pswitch_401  #0x5d
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isWindowTraceEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_40d  #0x5c
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->saveWindowTraceToFile()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_415  #0x5b
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopWindowTrace()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_41d  #0x5a
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->startWindowTrace()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_425  #0x59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_438  #0x58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_a8d

    :pswitch_44f  #0x57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_462  #0x56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_475  #0x55
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_481  #0x54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->destroyInputConsumer(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_498  #0x53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-instance v5, Landroid/view/InputChannel;

    invoke-direct {v5}, Landroid/view/InputChannel;-><init>()V

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_4b7  #0x52
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_4ce  #0x51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getStableInsets(ILandroid/graphics/Rect;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_4e5  #0x50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_4fc  #0x4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IPinnedTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedTaskListener;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_513  #0x4e
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setDockedTaskDividerTouchRegion(Landroid/graphics/Rect;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_526  #0x4d
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a8d

    :pswitch_532  #0x4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_545  #0x4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_558  #0x4a
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_560  #0x49
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_56c  #0x48
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_57f  #0x47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getNavBarPosition(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a8d

    :pswitch_592  #0x46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->hasNavigationBar(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_5a5  #0x45
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_5b4  #0x44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V

    goto/16 :goto_a8d

    :pswitch_5c8  #0x43
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    goto/16 :goto_a8d

    :pswitch_5d4  #0x42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->hideTransientBars(I)V

    goto/16 :goto_a8d

    :pswitch_5e0  #0x41
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_5f7  #0x40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_60e  #0x3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_625  #0x3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_63c  #0x3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_657  #0x3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_66a  #0x3b
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_676  #0x3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setIgnoreOrientationRequest(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_689  #0x39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setFixedToUserRotation(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_69c  #0x38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isDisplayRotationFrozen(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_6af  #0x37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->thawDisplayRotation(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_6be  #0x36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->freezeDisplayRotation(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_6d1  #0x35
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_6dd  #0x34
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_6e5  #0x33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_6f4  #0x32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a8d

    :pswitch_707  #0x31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_71a  #0x30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a8d

    :pswitch_735  #0x2f
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getDefaultDisplayRotation()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a8d

    :pswitch_741  #0x2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_754  #0x2d
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->refreshScreenCaptureDisabled()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_75c  #0x2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_76b  #0x2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_77a  #0x2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_789  #0x29
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_a8d

    :pswitch_795  #0x28
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_7a4  #0x27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_7b7  #0x26
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_a8d

    :pswitch_7c3  #0x25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_a8d

    :pswitch_7d6  #0x24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_7e5  #0x23
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setSwitchingUser(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_7f4  #0x22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_807  #0x21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_81a  #0x20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_835  #0x1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_848  #0x1e
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_854  #0x1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_867  #0x1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_87a  #0x1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_891  #0x1a
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_899  #0x19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_8ac  #0x18
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_8b4  #0x17
    sget-object v2, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_8cb  #0x16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_8ee  #0x15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setShellRootAccessibilityWindow(IILandroid/view/IWindow;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_909  #0x14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_a8d

    :pswitch_928  #0x13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayWindowRotationController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowRotationController;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setDisplayWindowRotationController(Landroid/view/IDisplayWindowRotationController;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_93b  #0x12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_94e  #0x11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_96d  #0x10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isWindowToken(Landroid/os/IBinder;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_a8d

    :pswitch_980  #0xf
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_98f  #0xe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_9a2  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_9b5  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_9cc  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a8d

    :pswitch_9df  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a8d

    :pswitch_9f2  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_a01  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a8d

    :pswitch_a18  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_a8d

    :pswitch_a2e  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_a8d

    :pswitch_a44  #0x5
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->useBLAST()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_a8d

    :pswitch_a4f  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_a8d

    :pswitch_a65  #0x3
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_a8d

    :pswitch_a70  #0x2
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_a8d

    :pswitch_a7b  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_a8d
    return v1

    :pswitch_data_a8e
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_a94
    .packed-switch 0x1
        :pswitch_a7b  #00000001
        :pswitch_a70  #00000002
        :pswitch_a65  #00000003
        :pswitch_a4f  #00000004
        :pswitch_a44  #00000005
        :pswitch_a2e  #00000006
        :pswitch_a18  #00000007
        :pswitch_a01  #00000008
        :pswitch_9f2  #00000009
        :pswitch_9df  #0000000a
        :pswitch_9cc  #0000000b
        :pswitch_9b5  #0000000c
        :pswitch_9a2  #0000000d
        :pswitch_98f  #0000000e
        :pswitch_980  #0000000f
        :pswitch_96d  #00000010
        :pswitch_94e  #00000011
        :pswitch_93b  #00000012
        :pswitch_928  #00000013
        :pswitch_909  #00000014
        :pswitch_8ee  #00000015
        :pswitch_8cb  #00000016
        :pswitch_8b4  #00000017
        :pswitch_8ac  #00000018
        :pswitch_899  #00000019
        :pswitch_891  #0000001a
        :pswitch_87a  #0000001b
        :pswitch_867  #0000001c
        :pswitch_854  #0000001d
        :pswitch_848  #0000001e
        :pswitch_835  #0000001f
        :pswitch_81a  #00000020
        :pswitch_807  #00000021
        :pswitch_7f4  #00000022
        :pswitch_7e5  #00000023
        :pswitch_7d6  #00000024
        :pswitch_7c3  #00000025
        :pswitch_7b7  #00000026
        :pswitch_7a4  #00000027
        :pswitch_795  #00000028
        :pswitch_789  #00000029
        :pswitch_77a  #0000002a
        :pswitch_76b  #0000002b
        :pswitch_75c  #0000002c
        :pswitch_754  #0000002d
        :pswitch_741  #0000002e
        :pswitch_735  #0000002f
        :pswitch_71a  #00000030
        :pswitch_707  #00000031
        :pswitch_6f4  #00000032
        :pswitch_6e5  #00000033
        :pswitch_6dd  #00000034
        :pswitch_6d1  #00000035
        :pswitch_6be  #00000036
        :pswitch_6af  #00000037
        :pswitch_69c  #00000038
        :pswitch_689  #00000039
        :pswitch_676  #0000003a
        :pswitch_66a  #0000003b
        :pswitch_657  #0000003c
        :pswitch_63c  #0000003d
        :pswitch_625  #0000003e
        :pswitch_60e  #0000003f
        :pswitch_5f7  #00000040
        :pswitch_5e0  #00000041
        :pswitch_5d4  #00000042
        :pswitch_5c8  #00000043
        :pswitch_5b4  #00000044
        :pswitch_5a5  #00000045
        :pswitch_592  #00000046
        :pswitch_57f  #00000047
        :pswitch_56c  #00000048
        :pswitch_560  #00000049
        :pswitch_558  #0000004a
        :pswitch_545  #0000004b
        :pswitch_532  #0000004c
        :pswitch_526  #0000004d
        :pswitch_513  #0000004e
        :pswitch_4fc  #0000004f
        :pswitch_4e5  #00000050
        :pswitch_4ce  #00000051
        :pswitch_4b7  #00000052
        :pswitch_498  #00000053
        :pswitch_481  #00000054
        :pswitch_475  #00000055
        :pswitch_462  #00000056
        :pswitch_44f  #00000057
        :pswitch_438  #00000058
        :pswitch_425  #00000059
        :pswitch_41d  #0000005a
        :pswitch_415  #0000005b
        :pswitch_40d  #0000005c
        :pswitch_401  #0000005d
        :pswitch_3ee  #0000005e
        :pswitch_3db  #0000005f
        :pswitch_3c8  #00000060
        :pswitch_3b5  #00000061
        :pswitch_3a2  #00000062
        :pswitch_38f  #00000063
        :pswitch_37c  #00000064
        :pswitch_369  #00000065
        :pswitch_356  #00000066
        :pswitch_343  #00000067
        :pswitch_334  #00000068
        :pswitch_328  #00000069
        :pswitch_319  #0000006a
        :pswitch_2fe  #0000006b
        :pswitch_2e7  #0000006c
        :pswitch_2d0  #0000006d
        :pswitch_2ad  #0000006e
        :pswitch_296  #0000006f
        :pswitch_28e  #00000070
        :pswitch_27f  #00000071
        :pswitch_260  #00000072
        :pswitch_24d  #00000073
        :pswitch_241  #00000074
        :pswitch_22a  #00000075
        :pswitch_21b  #00000076
        :pswitch_1f8  #00000077
        :pswitch_1e5  #00000078
        :pswitch_1ce  #00000079
        :pswitch_1bf  #0000007a
        :pswitch_1a8  #0000007b
        :pswitch_195  #0000007c
        :pswitch_189  #0000007d
        :pswitch_17d  #0000007e
        :pswitch_16e  #0000007f
        :pswitch_15b  #00000080
        :pswitch_153  #00000081
        :pswitch_13c  #00000082
        :pswitch_129  #00000083
        :pswitch_116  #00000084
        :pswitch_107  #00000085
        :pswitch_fb  #00000086
        :pswitch_ef  #00000087
        :pswitch_e3  #00000088
        :pswitch_d0  #00000089
        :pswitch_bd  #0000008a
        :pswitch_aa  #0000008b
        :pswitch_9b  #0000008c
        :pswitch_8f  #0000008d
        :pswitch_7c  #0000008e
        :pswitch_6d  #0000008f
        :pswitch_5a  #00000090
        :pswitch_47  #00000091
        :pswitch_3b  #00000092
        :pswitch_28  #00000093
        :pswitch_1c  #00000094
    .end packed-switch
.end method
