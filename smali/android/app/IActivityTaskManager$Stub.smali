# classes.dex

.class public abstract Landroid/app/IActivityTaskManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/app/IActivityTaskManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityTaskManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addAppTask:I = 0x29

.field static final TRANSACTION_alwaysShowUnsupportedCompileSdkWarning:I = 0x55

.field static final TRANSACTION_cancelRecentsAnimation:I = 0x21

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0x4d

.field static final TRANSACTION_castRotationChanged:I = 0x6c

.field static final TRANSACTION_clearLaunchParamsForPackages:I = 0x64

.field static final TRANSACTION_detachNavigationBarFromApp:I = 0x67

.field static final TRANSACTION_enterSplitScreen:I = 0x71

.field static final TRANSACTION_enterSplitScreenMode:I = 0x73

.field static final TRANSACTION_exitCastMode:I = 0x6e

.field static final TRANSACTION_exitSplitScreen:I = 0x72

.field static final TRANSACTION_finishVoiceTask:I = 0x28

.field static final TRANSACTION_getActivityClientController:I = 0x12

.field static final TRANSACTION_getAllRootTaskInfos:I = 0x3d

.field static final TRANSACTION_getAllRootTaskInfosOnDisplay:I = 0x3f

.field static final TRANSACTION_getAppTaskThumbnailSize:I = 0x2a

.field static final TRANSACTION_getAppTasks:I = 0x25

.field static final TRANSACTION_getAssistContextExtras:I = 0x42

.field static final TRANSACTION_getDeviceConfigurationInfo:I = 0x4c

.field static final TRANSACTION_getFocusedRootTaskInfo:I = 0x1f

.field static final TRANSACTION_getFrontActivityScreenCompatMode:I = 0x13

.field static final TRANSACTION_getLastResumedActivityUserId:I = 0x50

.field static final TRANSACTION_getLockTaskModeState:I = 0x24

.field static final TRANSACTION_getMiuiFreeFormManagerService:I = 0x34

.field static final TRANSACTION_getMiuiMultiWinSplitService:I = 0x6a

.field static final TRANSACTION_getNavBarPosition:I = 0x37

.field static final TRANSACTION_getPackageAskScreenCompat:I = 0x5e

.field static final TRANSACTION_getPackageScreenCompatMode:I = 0x5c

.field static final TRANSACTION_getRecentTasks:I = 0x1a

.field static final TRANSACTION_getRootTaskInfo:I = 0x3e

.field static final TRANSACTION_getRootTaskInfoOnDisplay:I = 0x40

.field static final TRANSACTION_getTaskBounds:I = 0x20

.field static final TRANSACTION_getTaskDescription:I = 0x1c

.field static final TRANSACTION_getTaskDescriptionIcon:I = 0x2c

.field static final TRANSACTION_getTaskResizeableForFreeform:I = 0x30

.field static final TRANSACTION_getTaskSnapshot:I = 0x4e

.field static final TRANSACTION_getTasks:I = 0x18

.field static final TRANSACTION_getTopSplitPackageNames:I = 0x77

.field static final TRANSACTION_getTopTaskVisibleActivities:I = 0x63

.field static final TRANSACTION_getTopVisibleActivity:I = 0x60

.field static final TRANSACTION_getVoiceInteractorPackageName:I = 0xa

.field static final TRANSACTION_getWindowOrganizerController:I = 0x49

.field static final TRANSACTION_handleFreeformModeRequst:I = 0x31

.field static final TRANSACTION_isActivityInEmbedded:I = 0x6b

.field static final TRANSACTION_isActivityStartAllowedOnDisplay:I = 0x10

.field static final TRANSACTION_isAssistDataAllowedOnCurrentActivity:I = 0x45

.field static final TRANSACTION_isContinuousStart:I = 0x78

.field static final TRANSACTION_isInFreeFormControlRegon:I = 0x35

.field static final TRANSACTION_isInLockTaskMode:I = 0x23

.field static final TRANSACTION_isInSplitScreenWindowingMode:I = 0x70

.field static final TRANSACTION_isPairRootTask:I = 0x76

.field static final TRANSACTION_isTopActivityImmersive:I = 0x1b

.field static final TRANSACTION_isTopActivityInFreeform:I = 0x33

.field static final TRANSACTION_keyguardGoingAway:I = 0x47

.field static final TRANSACTION_launchFlashBackFromBackGround:I = 0x36

.field static final TRANSACTION_launchSmallFreeFormWindow:I = 0x32

.field static final TRANSACTION_moveRootTaskToDisplay:I = 0x39

.field static final TRANSACTION_moveTaskToFront:I = 0x19

.field static final TRANSACTION_moveTaskToRootTask:I = 0x3a

.field static final TRANSACTION_moveTopActivityToCastMode:I = 0x6d

.field static final TRANSACTION_notifyRemoveSnapshotQS:I = 0x7a

.field static final TRANSACTION_notifyTakeSnapshotQS:I = 0x79

.field static final TRANSACTION_onPictureInPictureStateChanged:I = 0x66

.field static final TRANSACTION_onSplashScreenViewCopyFinished:I = 0x65

.field static final TRANSACTION_registerActivityObserver:I = 0x61

.field static final TRANSACTION_registerRemoteAnimationForNextActivityStart:I = 0x53

.field static final TRANSACTION_registerRemoteAnimationsForDisplay:I = 0x54

.field static final TRANSACTION_registerSecureChangedListener:I = 0x74

.field static final TRANSACTION_registerTaskStackListener:I = 0x2d

.field static final TRANSACTION_releaseSomeActivities:I = 0x2b

.field static final TRANSACTION_removeAllVisibleRecentTasks:I = 0x17

.field static final TRANSACTION_removeRootTasksInWindowingModes:I = 0x3b

.field static final TRANSACTION_removeRootTasksWithActivityTypes:I = 0x3c

.field static final TRANSACTION_removeTask:I = 0x16

.field static final TRANSACTION_reportAssistContextExtras:I = 0x1d

.field static final TRANSACTION_requestAssistContextExtras:I = 0x43

.field static final TRANSACTION_requestAssistDataForTask:I = 0x46

.field static final TRANSACTION_requestAutofillData:I = 0x44

.field static final TRANSACTION_resizeTask:I = 0x38

.field static final TRANSACTION_resumeAppSwitches:I = 0x59

.field static final TRANSACTION_setActivityController:I = 0x5a

.field static final TRANSACTION_setFocusedRootTask:I = 0x1e

.field static final TRANSACTION_setFocusedTask:I = 0x15

.field static final TRANSACTION_setFrontActivityScreenCompatMode:I = 0x14

.field static final TRANSACTION_setLockScreenShown:I = 0x41

.field static final TRANSACTION_setOrientationOptions:I = 0x6f

.field static final TRANSACTION_setPackageAskScreenCompat:I = 0x5f

.field static final TRANSACTION_setPackageScreenCompatMode:I = 0x5d

.field static final TRANSACTION_setPersistentVrThread:I = 0x57

.field static final TRANSACTION_setRunningRemoteTransitionDelegate:I = 0x68

.field static final TRANSACTION_setSplitScreenResizing:I = 0x4a

.field static final TRANSACTION_setTaskResizeable:I = 0x2f

.field static final TRANSACTION_setVoiceKeepAwake:I = 0x5b

.field static final TRANSACTION_setVrThread:I = 0x56

.field static final TRANSACTION_startActivities:I = 0x2

.field static final TRANSACTION_startActivity:I = 0x1

.field static final TRANSACTION_startActivityAndWait:I = 0x7

.field static final TRANSACTION_startActivityAsCaller:I = 0xf

.field static final TRANSACTION_startActivityAsUser:I = 0x3

.field static final TRANSACTION_startActivityFromGameSession:I = 0xc

.field static final TRANSACTION_startActivityFromRecents:I = 0xe

.field static final TRANSACTION_startActivityIntentSender:I = 0x6

.field static final TRANSACTION_startActivityWithConfig:I = 0x8

.field static final TRANSACTION_startAssistantActivity:I = 0xb

.field static final TRANSACTION_startBackNavigation:I = 0x69

.field static final TRANSACTION_startDreamActivity:I = 0x5

.field static final TRANSACTION_startNextMatchingActivity:I = 0x4

.field static final TRANSACTION_startRecentsActivity:I = 0xd

.field static final TRANSACTION_startSystemLockTaskMode:I = 0x26

.field static final TRANSACTION_startVoiceActivity:I = 0x9

.field static final TRANSACTION_stopAppSwitches:I = 0x58

.field static final TRANSACTION_stopSystemLockTaskMode:I = 0x27

.field static final TRANSACTION_supportsLocalVoiceInteraction:I = 0x4b

.field static final TRANSACTION_supportsSplitScreen:I = 0x7b

.field static final TRANSACTION_suppressResizeConfigChanges:I = 0x48

.field static final TRANSACTION_takeTaskSnapshot:I = 0x4f

.field static final TRANSACTION_unRegisterSecureChangedListener:I = 0x75

.field static final TRANSACTION_unhandledBack:I = 0x11

.field static final TRANSACTION_unregisterActivityObserver:I = 0x62

.field static final TRANSACTION_unregisterTaskStackListener:I = 0x2e

.field static final TRANSACTION_updateConfiguration:I = 0x51

.field static final TRANSACTION_updateLockTaskFeatures:I = 0x52

.field static final TRANSACTION_updateLockTaskPackages:I = 0x22


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IActivityTaskManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityTaskManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityTaskManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.IActivityTaskManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IActivityTaskManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/IActivityTaskManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/IActivityTaskManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1ba

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x7b
    const-string/jumbo v0, "supportsSplitScreen"

    return-object v0

    :pswitch_9  #0x7a
    const-string/jumbo v0, "notifyRemoveSnapshotQS"

    return-object v0

    :pswitch_d  #0x79
    const-string/jumbo v0, "notifyTakeSnapshotQS"

    return-object v0

    :pswitch_11  #0x78
    const-string v0, "isContinuousStart"

    return-object v0

    :pswitch_14  #0x77
    const-string v0, "getTopSplitPackageNames"

    return-object v0

    :pswitch_17  #0x76
    const-string v0, "isPairRootTask"

    return-object v0

    :pswitch_1a  #0x75
    const-string/jumbo v0, "unRegisterSecureChangedListener"

    return-object v0

    :pswitch_1e  #0x74
    const-string/jumbo v0, "registerSecureChangedListener"

    return-object v0

    :pswitch_22  #0x73
    const-string v0, "enterSplitScreenMode"

    return-object v0

    :pswitch_25  #0x72
    const-string v0, "exitSplitScreen"

    return-object v0

    :pswitch_28  #0x71
    const-string v0, "enterSplitScreen"

    return-object v0

    :pswitch_2b  #0x70
    const-string v0, "isInSplitScreenWindowingMode"

    return-object v0

    :pswitch_2e  #0x6f
    const-string/jumbo v0, "setOrientationOptions"

    return-object v0

    :pswitch_32  #0x6e
    const-string v0, "exitCastMode"

    return-object v0

    :pswitch_35  #0x6d
    const-string/jumbo v0, "moveTopActivityToCastMode"

    return-object v0

    :pswitch_39  #0x6c
    const-string v0, "castRotationChanged"

    return-object v0

    :pswitch_3c  #0x6b
    const-string v0, "isActivityInEmbedded"

    return-object v0

    :pswitch_3f  #0x6a
    const-string v0, "getMiuiMultiWinSplitService"

    return-object v0

    :pswitch_42  #0x69
    const-string/jumbo v0, "startBackNavigation"

    return-object v0

    :pswitch_46  #0x68
    const-string/jumbo v0, "setRunningRemoteTransitionDelegate"

    return-object v0

    :pswitch_4a  #0x67
    const-string v0, "detachNavigationBarFromApp"

    return-object v0

    :pswitch_4d  #0x66
    const-string/jumbo v0, "onPictureInPictureStateChanged"

    return-object v0

    :pswitch_51  #0x65
    const-string/jumbo v0, "onSplashScreenViewCopyFinished"

    return-object v0

    :pswitch_55  #0x64
    const-string v0, "clearLaunchParamsForPackages"

    return-object v0

    :pswitch_58  #0x63
    const-string v0, "getTopTaskVisibleActivities"

    return-object v0

    :pswitch_5b  #0x62
    const-string/jumbo v0, "unregisterActivityObserver"

    return-object v0

    :pswitch_5f  #0x61
    const-string/jumbo v0, "registerActivityObserver"

    return-object v0

    :pswitch_63  #0x60
    const-string v0, "getTopVisibleActivity"

    return-object v0

    :pswitch_66  #0x5f
    const-string/jumbo v0, "setPackageAskScreenCompat"

    return-object v0

    :pswitch_6a  #0x5e
    const-string v0, "getPackageAskScreenCompat"

    return-object v0

    :pswitch_6d  #0x5d
    const-string/jumbo v0, "setPackageScreenCompatMode"

    return-object v0

    :pswitch_71  #0x5c
    const-string v0, "getPackageScreenCompatMode"

    return-object v0

    :pswitch_74  #0x5b
    const-string/jumbo v0, "setVoiceKeepAwake"

    return-object v0

    :pswitch_78  #0x5a
    const-string/jumbo v0, "setActivityController"

    return-object v0

    :pswitch_7c  #0x59
    const-string/jumbo v0, "resumeAppSwitches"

    return-object v0

    :pswitch_80  #0x58
    const-string/jumbo v0, "stopAppSwitches"

    return-object v0

    :pswitch_84  #0x57
    const-string/jumbo v0, "setPersistentVrThread"

    return-object v0

    :pswitch_88  #0x56
    const-string/jumbo v0, "setVrThread"

    return-object v0

    :pswitch_8c  #0x55
    const-string v0, "alwaysShowUnsupportedCompileSdkWarning"

    return-object v0

    :pswitch_8f  #0x54
    const-string/jumbo v0, "registerRemoteAnimationsForDisplay"

    return-object v0

    :pswitch_93  #0x53
    const-string/jumbo v0, "registerRemoteAnimationForNextActivityStart"

    return-object v0

    :pswitch_97  #0x52
    const-string/jumbo v0, "updateLockTaskFeatures"

    return-object v0

    :pswitch_9b  #0x51
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    :pswitch_9f  #0x50
    const-string v0, "getLastResumedActivityUserId"

    return-object v0

    :pswitch_a2  #0x4f
    const-string/jumbo v0, "takeTaskSnapshot"

    return-object v0

    :pswitch_a6  #0x4e
    const-string v0, "getTaskSnapshot"

    return-object v0

    :pswitch_a9  #0x4d
    const-string v0, "cancelTaskWindowTransition"

    return-object v0

    :pswitch_ac  #0x4c
    const-string v0, "getDeviceConfigurationInfo"

    return-object v0

    :pswitch_af  #0x4b
    const-string/jumbo v0, "supportsLocalVoiceInteraction"

    return-object v0

    :pswitch_b3  #0x4a
    const-string/jumbo v0, "setSplitScreenResizing"

    return-object v0

    :pswitch_b7  #0x49
    const-string v0, "getWindowOrganizerController"

    return-object v0

    :pswitch_ba  #0x48
    const-string/jumbo v0, "suppressResizeConfigChanges"

    return-object v0

    :pswitch_be  #0x47
    const-string v0, "keyguardGoingAway"

    return-object v0

    :pswitch_c1  #0x46
    const-string/jumbo v0, "requestAssistDataForTask"

    return-object v0

    :pswitch_c5  #0x45
    const-string v0, "isAssistDataAllowedOnCurrentActivity"

    return-object v0

    :pswitch_c8  #0x44
    const-string/jumbo v0, "requestAutofillData"

    return-object v0

    :pswitch_cc  #0x43
    const-string/jumbo v0, "requestAssistContextExtras"

    return-object v0

    :pswitch_d0  #0x42
    const-string v0, "getAssistContextExtras"

    return-object v0

    :pswitch_d3  #0x41
    const-string/jumbo v0, "setLockScreenShown"

    return-object v0

    :pswitch_d7  #0x40
    const-string v0, "getRootTaskInfoOnDisplay"

    return-object v0

    :pswitch_da  #0x3f
    const-string v0, "getAllRootTaskInfosOnDisplay"

    return-object v0

    :pswitch_dd  #0x3e
    const-string v0, "getRootTaskInfo"

    return-object v0

    :pswitch_e0  #0x3d
    const-string v0, "getAllRootTaskInfos"

    return-object v0

    :pswitch_e3  #0x3c
    const-string/jumbo v0, "removeRootTasksWithActivityTypes"

    return-object v0

    :pswitch_e7  #0x3b
    const-string/jumbo v0, "removeRootTasksInWindowingModes"

    return-object v0

    :pswitch_eb  #0x3a
    const-string/jumbo v0, "moveTaskToRootTask"

    return-object v0

    :pswitch_ef  #0x39
    const-string/jumbo v0, "moveRootTaskToDisplay"

    return-object v0

    :pswitch_f3  #0x38
    const-string/jumbo v0, "resizeTask"

    return-object v0

    :pswitch_f7  #0x37
    const-string v0, "getNavBarPosition"

    return-object v0

    :pswitch_fa  #0x36
    const-string v0, "launchFlashBackFromBackGround"

    return-object v0

    :pswitch_fd  #0x35
    const-string v0, "isInFreeFormControlRegon"

    return-object v0

    :pswitch_100  #0x34
    const-string v0, "getMiuiFreeFormManagerService"

    return-object v0

    :pswitch_103  #0x33
    const-string v0, "isTopActivityInFreeform"

    return-object v0

    :pswitch_106  #0x32
    const-string v0, "launchSmallFreeFormWindow"

    return-object v0

    :pswitch_109  #0x31
    const-string v0, "handleFreeformModeRequst"

    return-object v0

    :pswitch_10c  #0x30
    const-string v0, "getTaskResizeableForFreeform"

    return-object v0

    :pswitch_10f  #0x2f
    const-string/jumbo v0, "setTaskResizeable"

    return-object v0

    :pswitch_113  #0x2e
    const-string/jumbo v0, "unregisterTaskStackListener"

    return-object v0

    :pswitch_117  #0x2d
    const-string/jumbo v0, "registerTaskStackListener"

    return-object v0

    :pswitch_11b  #0x2c
    const-string v0, "getTaskDescriptionIcon"

    return-object v0

    :pswitch_11e  #0x2b
    const-string/jumbo v0, "releaseSomeActivities"

    return-object v0

    :pswitch_122  #0x2a
    const-string v0, "getAppTaskThumbnailSize"

    return-object v0

    :pswitch_125  #0x29
    const-string v0, "addAppTask"

    return-object v0

    :pswitch_128  #0x28
    const-string v0, "finishVoiceTask"

    return-object v0

    :pswitch_12b  #0x27
    const-string/jumbo v0, "stopSystemLockTaskMode"

    return-object v0

    :pswitch_12f  #0x26
    const-string/jumbo v0, "startSystemLockTaskMode"

    return-object v0

    :pswitch_133  #0x25
    const-string v0, "getAppTasks"

    return-object v0

    :pswitch_136  #0x24
    const-string v0, "getLockTaskModeState"

    return-object v0

    :pswitch_139  #0x23
    const-string v0, "isInLockTaskMode"

    return-object v0

    :pswitch_13c  #0x22
    const-string/jumbo v0, "updateLockTaskPackages"

    return-object v0

    :pswitch_140  #0x21
    const-string v0, "cancelRecentsAnimation"

    return-object v0

    :pswitch_143  #0x20
    const-string v0, "getTaskBounds"

    return-object v0

    :pswitch_146  #0x1f
    const-string v0, "getFocusedRootTaskInfo"

    return-object v0

    :pswitch_149  #0x1e
    const-string/jumbo v0, "setFocusedRootTask"

    return-object v0

    :pswitch_14d  #0x1d
    const-string/jumbo v0, "reportAssistContextExtras"

    return-object v0

    :pswitch_151  #0x1c
    const-string v0, "getTaskDescription"

    return-object v0

    :pswitch_154  #0x1b
    const-string v0, "isTopActivityImmersive"

    return-object v0

    :pswitch_157  #0x1a
    const-string v0, "getRecentTasks"

    return-object v0

    :pswitch_15a  #0x19
    const-string/jumbo v0, "moveTaskToFront"

    return-object v0

    :pswitch_15e  #0x18
    const-string v0, "getTasks"

    return-object v0

    :pswitch_161  #0x17
    const-string/jumbo v0, "removeAllVisibleRecentTasks"

    return-object v0

    :pswitch_165  #0x16
    const-string/jumbo v0, "removeTask"

    return-object v0

    :pswitch_169  #0x15
    const-string/jumbo v0, "setFocusedTask"

    return-object v0

    :pswitch_16d  #0x14
    const-string/jumbo v0, "setFrontActivityScreenCompatMode"

    return-object v0

    :pswitch_171  #0x13
    const-string v0, "getFrontActivityScreenCompatMode"

    return-object v0

    :pswitch_174  #0x12
    const-string v0, "getActivityClientController"

    return-object v0

    :pswitch_177  #0x11
    const-string/jumbo v0, "unhandledBack"

    return-object v0

    :pswitch_17b  #0x10
    const-string v0, "isActivityStartAllowedOnDisplay"

    return-object v0

    :pswitch_17e  #0xf
    const-string/jumbo v0, "startActivityAsCaller"

    return-object v0

    :pswitch_182  #0xe
    const-string/jumbo v0, "startActivityFromRecents"

    return-object v0

    :pswitch_186  #0xd
    const-string/jumbo v0, "startRecentsActivity"

    return-object v0

    :pswitch_18a  #0xc
    const-string/jumbo v0, "startActivityFromGameSession"

    return-object v0

    :pswitch_18e  #0xb
    const-string/jumbo v0, "startAssistantActivity"

    return-object v0

    :pswitch_192  #0xa
    const-string v0, "getVoiceInteractorPackageName"

    return-object v0

    :pswitch_195  #0x9
    const-string/jumbo v0, "startVoiceActivity"

    return-object v0

    :pswitch_199  #0x8
    const-string/jumbo v0, "startActivityWithConfig"

    return-object v0

    :pswitch_19d  #0x7
    const-string/jumbo v0, "startActivityAndWait"

    return-object v0

    :pswitch_1a1  #0x6
    const-string/jumbo v0, "startActivityIntentSender"

    return-object v0

    :pswitch_1a5  #0x5
    const-string/jumbo v0, "startDreamActivity"

    return-object v0

    :pswitch_1a9  #0x4
    const-string/jumbo v0, "startNextMatchingActivity"

    return-object v0

    :pswitch_1ad  #0x3
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    :pswitch_1b1  #0x2
    const-string/jumbo v0, "startActivities"

    return-object v0

    :pswitch_1b5  #0x1
    const-string/jumbo v0, "startActivity"

    return-object v0

    nop

    :pswitch_data_1ba
    .packed-switch 0x1
        :pswitch_1b5  #00000001
        :pswitch_1b1  #00000002
        :pswitch_1ad  #00000003
        :pswitch_1a9  #00000004
        :pswitch_1a5  #00000005
        :pswitch_1a1  #00000006
        :pswitch_19d  #00000007
        :pswitch_199  #00000008
        :pswitch_195  #00000009
        :pswitch_192  #0000000a
        :pswitch_18e  #0000000b
        :pswitch_18a  #0000000c
        :pswitch_186  #0000000d
        :pswitch_182  #0000000e
        :pswitch_17e  #0000000f
        :pswitch_17b  #00000010
        :pswitch_177  #00000011
        :pswitch_174  #00000012
        :pswitch_171  #00000013
        :pswitch_16d  #00000014
        :pswitch_169  #00000015
        :pswitch_165  #00000016
        :pswitch_161  #00000017
        :pswitch_15e  #00000018
        :pswitch_15a  #00000019
        :pswitch_157  #0000001a
        :pswitch_154  #0000001b
        :pswitch_151  #0000001c
        :pswitch_14d  #0000001d
        :pswitch_149  #0000001e
        :pswitch_146  #0000001f
        :pswitch_143  #00000020
        :pswitch_140  #00000021
        :pswitch_13c  #00000022
        :pswitch_139  #00000023
        :pswitch_136  #00000024
        :pswitch_133  #00000025
        :pswitch_12f  #00000026
        :pswitch_12b  #00000027
        :pswitch_128  #00000028
        :pswitch_125  #00000029
        :pswitch_122  #0000002a
        :pswitch_11e  #0000002b
        :pswitch_11b  #0000002c
        :pswitch_117  #0000002d
        :pswitch_113  #0000002e
        :pswitch_10f  #0000002f
        :pswitch_10c  #00000030
        :pswitch_109  #00000031
        :pswitch_106  #00000032
        :pswitch_103  #00000033
        :pswitch_100  #00000034
        :pswitch_fd  #00000035
        :pswitch_fa  #00000036
        :pswitch_f7  #00000037
        :pswitch_f3  #00000038
        :pswitch_ef  #00000039
        :pswitch_eb  #0000003a
        :pswitch_e7  #0000003b
        :pswitch_e3  #0000003c
        :pswitch_e0  #0000003d
        :pswitch_dd  #0000003e
        :pswitch_da  #0000003f
        :pswitch_d7  #00000040
        :pswitch_d3  #00000041
        :pswitch_d0  #00000042
        :pswitch_cc  #00000043
        :pswitch_c8  #00000044
        :pswitch_c5  #00000045
        :pswitch_c1  #00000046
        :pswitch_be  #00000047
        :pswitch_ba  #00000048
        :pswitch_b7  #00000049
        :pswitch_b3  #0000004a
        :pswitch_af  #0000004b
        :pswitch_ac  #0000004c
        :pswitch_a9  #0000004d
        :pswitch_a6  #0000004e
        :pswitch_a2  #0000004f
        :pswitch_9f  #00000050
        :pswitch_9b  #00000051
        :pswitch_97  #00000052
        :pswitch_93  #00000053
        :pswitch_8f  #00000054
        :pswitch_8c  #00000055
        :pswitch_88  #00000056
        :pswitch_84  #00000057
        :pswitch_80  #00000058
        :pswitch_7c  #00000059
        :pswitch_78  #0000005a
        :pswitch_74  #0000005b
        :pswitch_71  #0000005c
        :pswitch_6d  #0000005d
        :pswitch_6a  #0000005e
        :pswitch_66  #0000005f
        :pswitch_63  #00000060
        :pswitch_5f  #00000061
        :pswitch_5b  #00000062
        :pswitch_58  #00000063
        :pswitch_55  #00000064
        :pswitch_51  #00000065
        :pswitch_4d  #00000066
        :pswitch_4a  #00000067
        :pswitch_46  #00000068
        :pswitch_42  #00000069
        :pswitch_3f  #0000006a
        :pswitch_3c  #0000006b
        :pswitch_39  #0000006c
        :pswitch_35  #0000006d
        :pswitch_32  #0000006e
        :pswitch_2e  #0000006f
        :pswitch_2b  #00000070
        :pswitch_28  #00000071
        :pswitch_25  #00000072
        :pswitch_22  #00000073
        :pswitch_1e  #00000074
        :pswitch_1a  #00000075
        :pswitch_17  #00000076
        :pswitch_14  #00000077
        :pswitch_11  #00000078
        :pswitch_d  #00000079
        :pswitch_9  #0000007a
        :pswitch_5  #0000007b
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x7a

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/app/IActivityTaskManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "android.app.IActivityTaskManager"

    const/4 v10, 0x1

    if-lt v14, v10, :cond_15

    const v0, 0xffffff

    if-gt v14, v0, :cond_15

    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v14, :pswitch_data_dfa

    packed-switch v14, :pswitch_data_e00

    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_21  #0x5f4e5446
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_25  #0x7b
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->supportsSplitScreen(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_3f  #0x7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->notifyRemoveSnapshotQS(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_51  #0x79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->notifyTakeSnapshotQS(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_67  #0x78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->isContinuousStart(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_7d  #0x77
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getTopSplitPackageNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_8c  #0x76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->isPairRootTask(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_a2  #0x75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWindowSecureChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWindowSecureChangeListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->unRegisterSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_b8  #0x74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWindowSecureChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWindowSecureChangeListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->registerSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_ce  #0x73
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->enterSplitScreenMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_d9  #0x72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->exitSplitScreen(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_eb  #0x71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->enterSplitScreen(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_101  #0x70
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isInSplitScreenWindowingMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_110  #0x6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setOrientationOptions(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_126  #0x6e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->exitCastMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_131  #0x6d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->moveTopActivityToCastMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_13c  #0x6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->castRotationChanged(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_14b  #0x6b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isActivityInEmbedded()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_15a  #0x6a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getMiuiMultiWinSplitService()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_169  #0x69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->startBackNavigation(Z)Landroid/window/BackNavigationInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_17f  #0x68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_195  #0x67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->detachNavigationBarFromApp(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_1a7  #0x66
    sget-object v0, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureUiState;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->onPictureInPictureStateChanged(Landroid/app/PictureInPictureUiState;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_1bd  #0x65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_1d7  #0x64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->clearLaunchParamsForPackages(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_1e9  #0x63
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getTopTaskVisibleActivities()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_1f8  #0x62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IMiuiActivityObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IMiuiActivityObserver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_20e  #0x61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IMiuiActivityObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IMiuiActivityObserver;

    move-result-object v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_22f  #0x60
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getTopVisibleActivity()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_23e  #0x5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_254  #0x5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_26a  #0x5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_280  #0x5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_296  #0x5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_2b0  #0x5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_2ca  #0x59
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->resumeAppSwitches()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_2d5  #0x58
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->stopAppSwitches()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_2e0  #0x57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setPersistentVrThread(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_2f2  #0x56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setVrThread(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_304  #0x55
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_31a  #0x54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationDefinition;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_334  #0x53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_352  #0x52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskFeatures(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_368  #0x51
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_382  #0x50
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getLastResumedActivityUserId()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_391  #0x4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->takeTaskSnapshot(I)Landroid/window/TaskSnapshot;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_3a7  #0x4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_3c1  #0x4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->cancelTaskWindowTransition(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_3d3  #0x4c
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_3e2  #0x4b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_3f1  #0x4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setSplitScreenResizing(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_403  #0x49
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_412  #0x48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->suppressResizeConfigChanges(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_424  #0x47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->keyguardGoingAway(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_436  #0x46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_458  #0x45
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_467  #0x44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_491  #0x43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v8

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityTaskManager$Stub;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_4cf  #0x42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_4e5  #0x41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setLockScreenShown(ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_4fb  #0x40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_519  #0x3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_52f  #0x3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_549  #0x3d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_558  #0x3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksWithActivityTypes([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_56a  #0x3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksInWindowingModes([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_57c  #0x3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToRootTask(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_596  #0x39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->moveRootTaskToDisplay(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_5ac  #0x38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_5ce  #0x37
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getNavBarPosition()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_5dd  #0x36
    sget-object v0, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->launchFlashBackFromBackGround(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_5ff  #0x35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->isInFreeFormControlRegon(FF)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_619  #0x34
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getMiuiFreeFormManagerService()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_628  #0x33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->isTopActivityInFreeform(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_63e  #0x32
    sget-object v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->launchSmallFreeFormWindow(Landroid/app/ActivityTaskManager$RootTaskInfo;Landroid/graphics/Rect;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_660  #0x31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->handleFreeformModeRequst(Landroid/os/IBinder;I)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_67a  #0x30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskResizeableForFreeform(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_690  #0x2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setTaskResizeable(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_6a6  #0x2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_6bc  #0x2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_6d2  #0x2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_6ec  #0x2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_6ff  #0x2a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_70e  #0x29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    sget-object v2, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$TaskDescription;

    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_73c  #0x28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_752  #0x27
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->stopSystemLockTaskMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_75d  #0x26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->startSystemLockTaskMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_76f  #0x25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_785  #0x24
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getLockTaskModeState()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_794  #0x23
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isInLockTaskMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_7a3  #0x22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_7b9  #0x21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->cancelRecentsAnimation(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_7cb  #0x20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_7e1  #0x1f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_7f0  #0x1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFocusedRootTask(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_802  #0x1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    sget-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/assist/AssistStructure;

    sget-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/assist/AssistContent;

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_841  #0x1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_857  #0x1b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isTopActivityImmersive()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_866  #0x1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_884  #0x19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_8b8  #0x18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getTasks(IZZ)Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_8d6  #0x17
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->removeAllVisibleRecentTasks()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_8e1  #0x16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeTask(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_8f7  #0x15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFocusedTask(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_909  #0x14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFrontActivityScreenCompatMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_91b  #0x13
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_92a  #0x12
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_939  #0x11
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->unhandledBack()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_944  #0x10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_df7

    :pswitch_96a  #0xf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/app/ProfilerInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move v14, v10

    move-object/from16 v10, v25

    move-object/from16 v28, v11

    move/from16 v11, v26

    move-object v14, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_df7

    :pswitch_9dd  #0xe
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_df7

    :pswitch_9fb  #0xd
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IRecentsAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationRunner;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->startRecentsActivity(Landroid/content/Intent;JLandroid/view/IRecentsAnimationRunner;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_df7

    :pswitch_a1d  #0xc
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_df7

    :pswitch_a67  #0xb
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_df7

    :pswitch_ab3  #0xa
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_df7

    :pswitch_ac9  #0x9
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_df7

    :pswitch_b3f  #0x8
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/content/res/Configuration;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_df7

    :pswitch_bb1  #0x7
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_df7

    :pswitch_c24  #0x6
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_df7

    :pswitch_c8d  #0x5
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->startDreamActivity(Landroid/content/Intent;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_df7

    :pswitch_ca7  #0x4
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_df7

    :pswitch_ccd  #0x3
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_df7

    :pswitch_d3f  #0x2
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_df7

    :pswitch_d8d  #0x1
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/app/ProfilerInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_df7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_dfa
    .packed-switch 0x5f4e5446
        :pswitch_21  #5f4e5446
    .end packed-switch

    :pswitch_data_e00
    .packed-switch 0x1
        :pswitch_d8d  #00000001
        :pswitch_d3f  #00000002
        :pswitch_ccd  #00000003
        :pswitch_ca7  #00000004
        :pswitch_c8d  #00000005
        :pswitch_c24  #00000006
        :pswitch_bb1  #00000007
        :pswitch_b3f  #00000008
        :pswitch_ac9  #00000009
        :pswitch_ab3  #0000000a
        :pswitch_a67  #0000000b
        :pswitch_a1d  #0000000c
        :pswitch_9fb  #0000000d
        :pswitch_9dd  #0000000e
        :pswitch_96a  #0000000f
        :pswitch_944  #00000010
        :pswitch_939  #00000011
        :pswitch_92a  #00000012
        :pswitch_91b  #00000013
        :pswitch_909  #00000014
        :pswitch_8f7  #00000015
        :pswitch_8e1  #00000016
        :pswitch_8d6  #00000017
        :pswitch_8b8  #00000018
        :pswitch_884  #00000019
        :pswitch_866  #0000001a
        :pswitch_857  #0000001b
        :pswitch_841  #0000001c
        :pswitch_802  #0000001d
        :pswitch_7f0  #0000001e
        :pswitch_7e1  #0000001f
        :pswitch_7cb  #00000020
        :pswitch_7b9  #00000021
        :pswitch_7a3  #00000022
        :pswitch_794  #00000023
        :pswitch_785  #00000024
        :pswitch_76f  #00000025
        :pswitch_75d  #00000026
        :pswitch_752  #00000027
        :pswitch_73c  #00000028
        :pswitch_70e  #00000029
        :pswitch_6ff  #0000002a
        :pswitch_6ec  #0000002b
        :pswitch_6d2  #0000002c
        :pswitch_6bc  #0000002d
        :pswitch_6a6  #0000002e
        :pswitch_690  #0000002f
        :pswitch_67a  #00000030
        :pswitch_660  #00000031
        :pswitch_63e  #00000032
        :pswitch_628  #00000033
        :pswitch_619  #00000034
        :pswitch_5ff  #00000035
        :pswitch_5dd  #00000036
        :pswitch_5ce  #00000037
        :pswitch_5ac  #00000038
        :pswitch_596  #00000039
        :pswitch_57c  #0000003a
        :pswitch_56a  #0000003b
        :pswitch_558  #0000003c
        :pswitch_549  #0000003d
        :pswitch_52f  #0000003e
        :pswitch_519  #0000003f
        :pswitch_4fb  #00000040
        :pswitch_4e5  #00000041
        :pswitch_4cf  #00000042
        :pswitch_491  #00000043
        :pswitch_467  #00000044
        :pswitch_458  #00000045
        :pswitch_436  #00000046
        :pswitch_424  #00000047
        :pswitch_412  #00000048
        :pswitch_403  #00000049
        :pswitch_3f1  #0000004a
        :pswitch_3e2  #0000004b
        :pswitch_3d3  #0000004c
        :pswitch_3c1  #0000004d
        :pswitch_3a7  #0000004e
        :pswitch_391  #0000004f
        :pswitch_382  #00000050
        :pswitch_368  #00000051
        :pswitch_352  #00000052
        :pswitch_334  #00000053
        :pswitch_31a  #00000054
        :pswitch_304  #00000055
        :pswitch_2f2  #00000056
        :pswitch_2e0  #00000057
        :pswitch_2d5  #00000058
        :pswitch_2ca  #00000059
        :pswitch_2b0  #0000005a
        :pswitch_296  #0000005b
        :pswitch_280  #0000005c
        :pswitch_26a  #0000005d
        :pswitch_254  #0000005e
        :pswitch_23e  #0000005f
        :pswitch_22f  #00000060
        :pswitch_20e  #00000061
        :pswitch_1f8  #00000062
        :pswitch_1e9  #00000063
        :pswitch_1d7  #00000064
        :pswitch_1bd  #00000065
        :pswitch_1a7  #00000066
        :pswitch_195  #00000067
        :pswitch_17f  #00000068
        :pswitch_169  #00000069
        :pswitch_15a  #0000006a
        :pswitch_14b  #0000006b
        :pswitch_13c  #0000006c
        :pswitch_131  #0000006d
        :pswitch_126  #0000006e
        :pswitch_110  #0000006f
        :pswitch_101  #00000070
        :pswitch_eb  #00000071
        :pswitch_d9  #00000072
        :pswitch_ce  #00000073
        :pswitch_b8  #00000074
        :pswitch_a2  #00000075
        :pswitch_8c  #00000076
        :pswitch_7d  #00000077
        :pswitch_67  #00000078
        :pswitch_51  #00000079
        :pswitch_3f  #0000007a
        :pswitch_25  #0000007b
    .end packed-switch
.end method
