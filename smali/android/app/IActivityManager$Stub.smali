# classes.dex

.class public abstract Landroid/app/IActivityManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManager"

.field static final TRANSACTION_addInstrumentationResults:I = 0x26

.field static final TRANSACTION_addPackageDependency:I = 0x58

.field static final TRANSACTION_appNotResponding:I = 0xfa

.field static final TRANSACTION_appNotRespondingViaProvider:I = 0xa0

.field static final TRANSACTION_attachApplication:I = 0x13

.field static final TRANSACTION_backgroundAllowlistUid:I = 0xcc

.field static final TRANSACTION_backupAgentCreated:I = 0x55

.field static final TRANSACTION_bindBackupAgent:I = 0x54

.field static final TRANSACTION_bindService:I = 0x1d

.field static final TRANSACTION_bindServiceInstance:I = 0x1e

.field static final TRANSACTION_bootAnimationComplete:I = 0xa9

.field static final TRANSACTION_broadcastIntent:I = 0xf

.field static final TRANSACTION_broadcastIntentWithFeature:I = 0x10

.field static final TRANSACTION_cancelIntentSender:I = 0x39

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0xc8

.field static final TRANSACTION_checkPermission:I = 0x6

.field static final TRANSACTION_checkUriPermission:I = 0x2e

.field static final TRANSACTION_checkUriPermissions:I = 0x2f

.field static final TRANSACTION_clearApplicationUserData:I = 0x48

.field static final TRANSACTION_closeSystemDialogs:I = 0x5a

.field static final TRANSACTION_collectWebViewProcesses:I = 0x94

.field static final TRANSACTION_crashApplicationWithType:I = 0x64

.field static final TRANSACTION_crashApplicationWithTypeWithExtras:I = 0x65

.field static final TRANSACTION_dumpHeap:I = 0x68

.field static final TRANSACTION_dumpHeapFinished:I = 0xb2

.field static final TRANSACTION_dumpMiuiStackTraces:I = 0xf4

.field static final TRANSACTION_enableAmsDebugConfig:I = 0x10c

.field static final TRANSACTION_enableAppDebugConfig:I = 0x10d

.field static final TRANSACTION_enableAppFreezer:I = 0x103

.field static final TRANSACTION_enableBinderTracing:I = 0xb9

.field static final TRANSACTION_enableFgsNotificationRateLimit:I = 0x104

.field static final TRANSACTION_enterSafeMode:I = 0x3d

.field static final TRANSACTION_finishActivity:I = 0xb

.field static final TRANSACTION_finishHeavyWeightApp:I = 0x61

.field static final TRANSACTION_finishInstrumentation:I = 0x27

.field static final TRANSACTION_finishReceiver:I = 0x12

.field static final TRANSACTION_forceStopPackage:I = 0x4b

.field static final TRANSACTION_getAllRootTaskInfos:I = 0x9a

.field static final TRANSACTION_getApplicationLockActivityList:I = 0xeb

.field static final TRANSACTION_getBackgroundRestrictionExemptionReason:I = 0x10b

.field static final TRANSACTION_getBugreportWhitelistedPackages:I = 0x93

.field static final TRANSACTION_getCastPid:I = 0xcf

.field static final TRANSACTION_getConfiguration:I = 0x28

.field static final TRANSACTION_getContentProvider:I = 0x17

.field static final TRANSACTION_getContentProviderExternal:I = 0x78

.field static final TRANSACTION_getCurrentUser:I = 0x7d

.field static final TRANSACTION_getCurrentUserId:I = 0x7e

.field static final TRANSACTION_getDelegatedShellPermissions:I = 0xf7

.field static final TRANSACTION_getFixedRotationAppList:I = 0xf0

.field static final TRANSACTION_getFocusedRootTaskInfo:I = 0x9d

.field static final TRANSACTION_getForceLandscapeApplication:I = 0xed

.field static final TRANSACTION_getForegroundServiceType:I = 0x44

.field static final TRANSACTION_getFreeformBlackList:I = 0xe2

.field static final TRANSACTION_getFreeformCaptionInsetsHeightToZeroList:I = 0xec

.field static final TRANSACTION_getFreeformDisableOverlayList:I = 0xe4

.field static final TRANSACTION_getFreeformIgnoreRequestOrientationList:I = 0xe5

.field static final TRANSACTION_getFreeformNeedRelunchList:I = 0xe6

.field static final TRANSACTION_getFreeformResizeableWhiteList:I = 0xea

.field static final TRANSACTION_getFreeformVideoWhiteList:I = 0xe3

.field static final TRANSACTION_getHideSelfIfNewFreeformTaskWhiteList:I = 0xe8

.field static final TRANSACTION_getHistoricalProcessExitReasons:I = 0xfb

.field static final TRANSACTION_getInfoForIntentSender:I = 0x3a

.field static final TRANSACTION_getIntentForIntentSender:I = 0x95

.field static final TRANSACTION_getIntentSender:I = 0x37

.field static final TRANSACTION_getIntentSenderWithFeature:I = 0x38

.field static final TRANSACTION_getLaunchedFromPackage:I = 0x96

.field static final TRANSACTION_getLaunchedFromUid:I = 0x7f

.field static final TRANSACTION_getLifeMonitor:I = 0xf8

.field static final TRANSACTION_getLockTaskModeState:I = 0xb0

.field static final TRANSACTION_getMemoryInfo:I = 0x46

.field static final TRANSACTION_getMemoryTrimLevel:I = 0xbe

.field static final TRANSACTION_getMyMemoryState:I = 0x7b

.field static final TRANSACTION_getOomAdjOfPid:I = 0xf5

.field static final TRANSACTION_getPackageProcessState:I = 0xb6

.field static final TRANSACTION_getProcessLimit:I = 0x2d

.field static final TRANSACTION_getProcessMemoryInfo:I = 0x5b

.field static final TRANSACTION_getProcessPss:I = 0x75

.field static final TRANSACTION_getProcessesInErrorState:I = 0x47

.field static final TRANSACTION_getProviderMimeType:I = 0x66

.field static final TRANSACTION_getProviderMimeTypeAsync:I = 0x67

.field static final TRANSACTION_getRecentTasks:I = 0x35

.field static final TRANSACTION_getRotationFromDisplayApp:I = 0xf1

.field static final TRANSACTION_getRunningAppProcesses:I = 0x4e

.field static final TRANSACTION_getRunningExternalApplications:I = 0x60

.field static final TRANSACTION_getRunningServiceControlPanel:I = 0x1a

.field static final TRANSACTION_getRunningUserIds:I = 0x88

.field static final TRANSACTION_getSensorDisableWhiteList:I = 0xf3

.field static final TRANSACTION_getServices:I = 0x4d

.field static final TRANSACTION_getShowHiddenTaskIfFinishedWhiteList:I = 0xe9

.field static final TRANSACTION_getStartFromFreeformBlackList:I = 0xe7

.field static final TRANSACTION_getSwitchingFromUserMessage:I = 0x6c

.field static final TRANSACTION_getSwitchingToUserMessage:I = 0x6d

.field static final TRANSACTION_getTagForIntentSender:I = 0xa3

.field static final TRANSACTION_getTaskBounds:I = 0xa1

.field static final TRANSACTION_getTaskForActivity:I = 0x16

.field static final TRANSACTION_getTaskResizeableForFreeform:I = 0xae

.field static final TRANSACTION_getTasks:I = 0x14

.field static final TRANSACTION_getTopGameList:I = 0xee

.field static final TRANSACTION_getTopVideoList:I = 0xef

.field static final TRANSACTION_getUidProcessCapabilities:I = 0x109

.field static final TRANSACTION_getUidProcessState:I = 0x5

.field static final TRANSACTION_getUseDefaultCameraPipelineApp:I = 0xf2

.field static final TRANSACTION_grantUriPermission:I = 0x30

.field static final TRANSACTION_handleApplicationCrash:I = 0x7

.field static final TRANSACTION_handleApplicationStrictModeViolation:I = 0x62

.field static final TRANSACTION_handleApplicationWtf:I = 0x5d

.field static final TRANSACTION_handleIncomingUser:I = 0x57

.field static final TRANSACTION_hang:I = 0x99

.field static final TRANSACTION_holdLock:I = 0x105

.field static final TRANSACTION_isAppFreezerEnabled:I = 0x100

.field static final TRANSACTION_isAppFreezerSupported:I = 0xff

.field static final TRANSACTION_isBackgroundRestricted:I = 0xc4

.field static final TRANSACTION_isInLockTaskMode:I = 0xa5

.field static final TRANSACTION_isIntentSenderAnActivity:I = 0x81

.field static final TRANSACTION_isIntentSenderTargetedToPackage:I = 0x72

.field static final TRANSACTION_isTopActivityImmersive:I = 0x63

.field static final TRANSACTION_isTopOfTask:I = 0xa8

.field static final TRANSACTION_isUidActive:I = 0x4

.field static final TRANSACTION_isUserAMonkey:I = 0x5f

.field static final TRANSACTION_isUserRunning:I = 0x69

.field static final TRANSACTION_isVrModePackageEnabled:I = 0xbf

.field static final TRANSACTION_killAllBackgroundProcesses:I = 0x77

.field static final TRANSACTION_killApplication:I = 0x59

.field static final TRANSACTION_killApplicationProcess:I = 0x5c

.field static final TRANSACTION_killBackgroundProcesses:I = 0x5e

.field static final TRANSACTION_killPackageDependents:I = 0xbc

.field static final TRANSACTION_killPids:I = 0x4c

.field static final TRANSACTION_killProcessesBelowForeground:I = 0x7c

.field static final TRANSACTION_killProcessesWhenImperceptible:I = 0xfc

.field static final TRANSACTION_killUid:I = 0x97

.field static final TRANSACTION_killUidForPermissionChange:I = 0x101

.field static final TRANSACTION_launchBugReportHandlerApp:I = 0x92

.field static final TRANSACTION_makePackageIdle:I = 0xbd

.field static final TRANSACTION_moveActivityTaskToBack:I = 0x45

.field static final TRANSACTION_moveTaskToFront:I = 0x15

.field static final TRANSACTION_moveTaskToRootTask:I = 0x9b

.field static final TRANSACTION_noteAlarmFinish:I = 0xb5

.field static final TRANSACTION_noteAlarmStart:I = 0xb4

.field static final TRANSACTION_noteWakeupAlarm:I = 0x3e

.field static final TRANSACTION_notifyCleartextNetwork:I = 0xac

.field static final TRANSACTION_notifyLockedProfile:I = 0xc0

.field static final TRANSACTION_openContentUri:I = 0x1

.field static final TRANSACTION_peekService:I = 0x4f

.field static final TRANSACTION_performIdleMaintenance:I = 0x9f

.field static final TRANSACTION_profileControl:I = 0x50

.field static final TRANSACTION_publishContentProviders:I = 0x18

.field static final TRANSACTION_publishService:I = 0x21

.field static final TRANSACTION_queryIntentComponentsForIntentSender:I = 0x108

.field static final TRANSACTION_refContentProvider:I = 0x19

.field static final TRANSACTION_registerForegroundServiceObserver:I = 0x4a

.field static final TRANSACTION_registerIntentSenderCancelListenerEx:I = 0x3b

.field static final TRANSACTION_registerProcessObserver:I = 0x70

.field static final TRANSACTION_registerReceiver:I = 0xc

.field static final TRANSACTION_registerReceiverWithFeature:I = 0xd

.field static final TRANSACTION_registerTaskStackListener:I = 0xaa

.field static final TRANSACTION_registerUidObserver:I = 0x2

.field static final TRANSACTION_registerUserSwitchObserver:I = 0x86

.field static final TRANSACTION_removeContentProvider:I = 0x3f

.field static final TRANSACTION_removeContentProviderExternal:I = 0x79

.field static final TRANSACTION_removeContentProviderExternalAsUser:I = 0x7a

.field static final TRANSACTION_removeTask:I = 0x6f

.field static final TRANSACTION_requestBugReport:I = 0x8a

.field static final TRANSACTION_requestBugReportWithDescription:I = 0x8b

.field static final TRANSACTION_requestFullBugReport:I = 0x90

.field static final TRANSACTION_requestInteractiveBugReport:I = 0x8f

.field static final TRANSACTION_requestInteractiveBugReportWithDescription:I = 0x8e

.field static final TRANSACTION_requestRemoteBugReport:I = 0x91

.field static final TRANSACTION_requestSystemServerHeapDump:I = 0x89

.field static final TRANSACTION_requestTelephonyBugReport:I = 0x8c

.field static final TRANSACTION_requestWifiBugReport:I = 0x8d

.field static final TRANSACTION_resetAppErrors:I = 0x102

.field static final TRANSACTION_resizeTask:I = 0xaf

.field static final TRANSACTION_restart:I = 0x9e

.field static final TRANSACTION_restartUserInBackground:I = 0xc7

.field static final TRANSACTION_resumeAppSwitches:I = 0x53

.field static final TRANSACTION_revokeUriPermission:I = 0x31

.field static final TRANSACTION_scheduleApplicationInfoChanged:I = 0xc9

.field static final TRANSACTION_sendIdleJobTrigger:I = 0xc2

.field static final TRANSACTION_sendIntentSender:I = 0xc3

.field static final TRANSACTION_serviceDoneExecuting:I = 0x36

.field static final TRANSACTION_setActivityController:I = 0x32

.field static final TRANSACTION_setActivityLocusContext:I = 0xfd

.field static final TRANSACTION_setAgentApp:I = 0x23

.field static final TRANSACTION_setAlwaysFinish:I = 0x24

.field static final TRANSACTION_setApplicationLockActivityList:I = 0xd9

.field static final TRANSACTION_setDebugApp:I = 0x22

.field static final TRANSACTION_setDumpHeapDebugLimit:I = 0xb1

.field static final TRANSACTION_setFixedRotationAppList:I = 0xde

.field static final TRANSACTION_setFocusedRootTask:I = 0x9c

.field static final TRANSACTION_setForceLandscapeApplication:I = 0xdb

.field static final TRANSACTION_setFreeformBlackList:I = 0xd0

.field static final TRANSACTION_setFreeformCaptionInsetsHeightToZeroList:I = 0xda

.field static final TRANSACTION_setFreeformDisableOverlayList:I = 0xd2

.field static final TRANSACTION_setFreeformIgnoreRequestOrientationList:I = 0xd3

.field static final TRANSACTION_setFreeformNeedRelunchList:I = 0xd4

.field static final TRANSACTION_setFreeformResizeableWhiteList:I = 0xd8

.field static final TRANSACTION_setFreeformVideoWhiteList:I = 0xd1

.field static final TRANSACTION_setHasTopUi:I = 0xc6

.field static final TRANSACTION_setHideSelfIfNewFreeformTaskWhiteList:I = 0xd6

.field static final TRANSACTION_setPackageScreenCompatMode:I = 0x6a

.field static final TRANSACTION_setPersistentVrThread:I = 0xca

.field static final TRANSACTION_setProcessImportant:I = 0x42

.field static final TRANSACTION_setProcessLimit:I = 0x2c

.field static final TRANSACTION_setProcessMemoryTrimLevel:I = 0xa2

.field static final TRANSACTION_setProcessStateSummary:I = 0xfe

.field static final TRANSACTION_setRenderThread:I = 0xc5

.field static final TRANSACTION_setRequestedOrientation:I = 0x40

.field static final TRANSACTION_setRotationFromDisplayApp:I = 0xdf

.field static final TRANSACTION_setSensorDisableWhiteList:I = 0xe1

.field static final TRANSACTION_setServiceForeground:I = 0x43

.field static final TRANSACTION_setShowHiddenTaskIfFinishedWhiteList:I = 0xd7

.field static final TRANSACTION_setStartFromFreeformBlackList:I = 0xd5

.field static final TRANSACTION_setStopUserOnSwitch:I = 0x6e

.field static final TRANSACTION_setTaskResizeable:I = 0xad

.field static final TRANSACTION_setTopGameList:I = 0xdc

.field static final TRANSACTION_setTopVideoList:I = 0xdd

.field static final TRANSACTION_setUseDefaultCameraPipelineApp:I = 0xe0

.field static final TRANSACTION_setUserIsMonkey:I = 0x98

.field static final TRANSACTION_showBootMessage:I = 0x76

.field static final TRANSACTION_showWaitingForDebugger:I = 0x33

.field static final TRANSACTION_shutdown:I = 0x51

.field static final TRANSACTION_signalPersistentProcesses:I = 0x34

.field static final TRANSACTION_startActivity:I = 0x8

.field static final TRANSACTION_startActivityAsUser:I = 0x82

.field static final TRANSACTION_startActivityAsUserWithFeature:I = 0x83

.field static final TRANSACTION_startActivityFromRecents:I = 0xa6

.field static final TRANSACTION_startActivityWithFeature:I = 0x9

.field static final TRANSACTION_startBinderTracking:I = 0xb7

.field static final TRANSACTION_startConfirmDeviceCredentialIntent:I = 0xc1

.field static final TRANSACTION_startDelegateShellPermissionIdentity:I = 0xce

.field static final TRANSACTION_startInstrumentation:I = 0x25

.field static final TRANSACTION_startProfile:I = 0x106

.field static final TRANSACTION_startService:I = 0x1b

.field static final TRANSACTION_startSystemLockTaskMode:I = 0xa7

.field static final TRANSACTION_startUserInBackground:I = 0xa4

.field static final TRANSACTION_startUserInBackgroundWithListener:I = 0xcd

.field static final TRANSACTION_startUserInForegroundWithListener:I = 0xf9

.field static final TRANSACTION_stopAppForUser:I = 0x49

.field static final TRANSACTION_stopAppSwitches:I = 0x52

.field static final TRANSACTION_stopBinderTrackingAndDump:I = 0xb8

.field static final TRANSACTION_stopDelegateShellPermissionIdentity:I = 0xf6

.field static final TRANSACTION_stopProfile:I = 0x107

.field static final TRANSACTION_stopService:I = 0x1c

.field static final TRANSACTION_stopServiceToken:I = 0x2b

.field static final TRANSACTION_stopUser:I = 0x84

.field static final TRANSACTION_stopUserWithDelayedLocking:I = 0x85

.field static final TRANSACTION_suppressResizeConfigChanges:I = 0xba

.field static final TRANSACTION_switchUser:I = 0x6b

.field static final TRANSACTION_unbindBackupAgent:I = 0x56

.field static final TRANSACTION_unbindFinished:I = 0x41

.field static final TRANSACTION_unbindService:I = 0x20

.field static final TRANSACTION_unbroadcastIntent:I = 0x11

.field static final TRANSACTION_unhandledBack:I = 0xa

.field static final TRANSACTION_unlockUser:I = 0xbb

.field static final TRANSACTION_unregisterIntentSenderCancelListener:I = 0x3c

.field static final TRANSACTION_unregisterProcessObserver:I = 0x71

.field static final TRANSACTION_unregisterReceiver:I = 0xe

.field static final TRANSACTION_unregisterTaskStackListener:I = 0xab

.field static final TRANSACTION_unregisterUidObserver:I = 0x3

.field static final TRANSACTION_unregisterUserSwitchObserver:I = 0x87

.field static final TRANSACTION_unstableProviderDied:I = 0x80

.field static final TRANSACTION_updateConfiguration:I = 0x29

.field static final TRANSACTION_updateLockTaskPackages:I = 0xb3

.field static final TRANSACTION_updateMccMncConfiguration:I = 0x2a

.field static final TRANSACTION_updatePersistentConfiguration:I = 0x73

.field static final TRANSACTION_updatePersistentConfigurationWithAttribution:I = 0x74

.field static final TRANSACTION_updateServiceGroup:I = 0x1f

.field static final TRANSACTION_waitForBroadcastIdle:I = 0x10a

.field static final TRANSACTION_waitForNetworkStateUpdate:I = 0xcb


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.IActivityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IActivityManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/IActivityManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/IActivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_3b6

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x10d
    const-string v0, "enableAppDebugConfig"

    return-object v0

    :pswitch_8  #0x10c
    const-string v0, "enableAmsDebugConfig"

    return-object v0

    :pswitch_b  #0x10b
    const-string v0, "getBackgroundRestrictionExemptionReason"

    return-object v0

    :pswitch_e  #0x10a
    const-string/jumbo v0, "waitForBroadcastIdle"

    return-object v0

    :pswitch_12  #0x109
    const-string v0, "getUidProcessCapabilities"

    return-object v0

    :pswitch_15  #0x108
    const-string/jumbo v0, "queryIntentComponentsForIntentSender"

    return-object v0

    :pswitch_19  #0x107
    const-string/jumbo v0, "stopProfile"

    return-object v0

    :pswitch_1d  #0x106
    const-string/jumbo v0, "startProfile"

    return-object v0

    :pswitch_21  #0x105
    const-string v0, "holdLock"

    return-object v0

    :pswitch_24  #0x104
    const-string v0, "enableFgsNotificationRateLimit"

    return-object v0

    :pswitch_27  #0x103
    const-string v0, "enableAppFreezer"

    return-object v0

    :pswitch_2a  #0x102
    const-string/jumbo v0, "resetAppErrors"

    return-object v0

    :pswitch_2e  #0x101
    const-string v0, "killUidForPermissionChange"

    return-object v0

    :pswitch_31  #0x100
    const-string v0, "isAppFreezerEnabled"

    return-object v0

    :pswitch_34  #0xff
    const-string v0, "isAppFreezerSupported"

    return-object v0

    :pswitch_37  #0xfe
    const-string/jumbo v0, "setProcessStateSummary"

    return-object v0

    :pswitch_3b  #0xfd
    const-string/jumbo v0, "setActivityLocusContext"

    return-object v0

    :pswitch_3f  #0xfc
    const-string v0, "killProcessesWhenImperceptible"

    return-object v0

    :pswitch_42  #0xfb
    const-string v0, "getHistoricalProcessExitReasons"

    return-object v0

    :pswitch_45  #0xfa
    const-string v0, "appNotResponding"

    return-object v0

    :pswitch_48  #0xf9
    const-string/jumbo v0, "startUserInForegroundWithListener"

    return-object v0

    :pswitch_4c  #0xf8
    const-string v0, "getLifeMonitor"

    return-object v0

    :pswitch_4f  #0xf7
    const-string v0, "getDelegatedShellPermissions"

    return-object v0

    :pswitch_52  #0xf6
    const-string/jumbo v0, "stopDelegateShellPermissionIdentity"

    return-object v0

    :pswitch_56  #0xf5
    const-string v0, "getOomAdjOfPid"

    return-object v0

    :pswitch_59  #0xf4
    const-string v0, "dumpMiuiStackTraces"

    return-object v0

    :pswitch_5c  #0xf3
    const-string v0, "getSensorDisableWhiteList"

    return-object v0

    :pswitch_5f  #0xf2
    const-string v0, "getUseDefaultCameraPipelineApp"

    return-object v0

    :pswitch_62  #0xf1
    const-string v0, "getRotationFromDisplayApp"

    return-object v0

    :pswitch_65  #0xf0
    const-string v0, "getFixedRotationAppList"

    return-object v0

    :pswitch_68  #0xef
    const-string v0, "getTopVideoList"

    return-object v0

    :pswitch_6b  #0xee
    const-string v0, "getTopGameList"

    return-object v0

    :pswitch_6e  #0xed
    const-string v0, "getForceLandscapeApplication"

    return-object v0

    :pswitch_71  #0xec
    const-string v0, "getFreeformCaptionInsetsHeightToZeroList"

    return-object v0

    :pswitch_74  #0xeb
    const-string v0, "getApplicationLockActivityList"

    return-object v0

    :pswitch_77  #0xea
    const-string v0, "getFreeformResizeableWhiteList"

    return-object v0

    :pswitch_7a  #0xe9
    const-string v0, "getShowHiddenTaskIfFinishedWhiteList"

    return-object v0

    :pswitch_7d  #0xe8
    const-string v0, "getHideSelfIfNewFreeformTaskWhiteList"

    return-object v0

    :pswitch_80  #0xe7
    const-string v0, "getStartFromFreeformBlackList"

    return-object v0

    :pswitch_83  #0xe6
    const-string v0, "getFreeformNeedRelunchList"

    return-object v0

    :pswitch_86  #0xe5
    const-string v0, "getFreeformIgnoreRequestOrientationList"

    return-object v0

    :pswitch_89  #0xe4
    const-string v0, "getFreeformDisableOverlayList"

    return-object v0

    :pswitch_8c  #0xe3
    const-string v0, "getFreeformVideoWhiteList"

    return-object v0

    :pswitch_8f  #0xe2
    const-string v0, "getFreeformBlackList"

    return-object v0

    :pswitch_92  #0xe1
    const-string/jumbo v0, "setSensorDisableWhiteList"

    return-object v0

    :pswitch_96  #0xe0
    const-string/jumbo v0, "setUseDefaultCameraPipelineApp"

    return-object v0

    :pswitch_9a  #0xdf
    const-string/jumbo v0, "setRotationFromDisplayApp"

    return-object v0

    :pswitch_9e  #0xde
    const-string/jumbo v0, "setFixedRotationAppList"

    return-object v0

    :pswitch_a2  #0xdd
    const-string/jumbo v0, "setTopVideoList"

    return-object v0

    :pswitch_a6  #0xdc
    const-string/jumbo v0, "setTopGameList"

    return-object v0

    :pswitch_aa  #0xdb
    const-string/jumbo v0, "setForceLandscapeApplication"

    return-object v0

    :pswitch_ae  #0xda
    const-string/jumbo v0, "setFreeformCaptionInsetsHeightToZeroList"

    return-object v0

    :pswitch_b2  #0xd9
    const-string/jumbo v0, "setApplicationLockActivityList"

    return-object v0

    :pswitch_b6  #0xd8
    const-string/jumbo v0, "setFreeformResizeableWhiteList"

    return-object v0

    :pswitch_ba  #0xd7
    const-string/jumbo v0, "setShowHiddenTaskIfFinishedWhiteList"

    return-object v0

    :pswitch_be  #0xd6
    const-string/jumbo v0, "setHideSelfIfNewFreeformTaskWhiteList"

    return-object v0

    :pswitch_c2  #0xd5
    const-string/jumbo v0, "setStartFromFreeformBlackList"

    return-object v0

    :pswitch_c6  #0xd4
    const-string/jumbo v0, "setFreeformNeedRelunchList"

    return-object v0

    :pswitch_ca  #0xd3
    const-string/jumbo v0, "setFreeformIgnoreRequestOrientationList"

    return-object v0

    :pswitch_ce  #0xd2
    const-string/jumbo v0, "setFreeformDisableOverlayList"

    return-object v0

    :pswitch_d2  #0xd1
    const-string/jumbo v0, "setFreeformVideoWhiteList"

    return-object v0

    :pswitch_d6  #0xd0
    const-string/jumbo v0, "setFreeformBlackList"

    return-object v0

    :pswitch_da  #0xcf
    const-string v0, "getCastPid"

    return-object v0

    :pswitch_dd  #0xce
    const-string/jumbo v0, "startDelegateShellPermissionIdentity"

    return-object v0

    :pswitch_e1  #0xcd
    const-string/jumbo v0, "startUserInBackgroundWithListener"

    return-object v0

    :pswitch_e5  #0xcc
    const-string v0, "backgroundAllowlistUid"

    return-object v0

    :pswitch_e8  #0xcb
    const-string/jumbo v0, "waitForNetworkStateUpdate"

    return-object v0

    :pswitch_ec  #0xca
    const-string/jumbo v0, "setPersistentVrThread"

    return-object v0

    :pswitch_f0  #0xc9
    const-string/jumbo v0, "scheduleApplicationInfoChanged"

    return-object v0

    :pswitch_f4  #0xc8
    const-string v0, "cancelTaskWindowTransition"

    return-object v0

    :pswitch_f7  #0xc7
    const-string/jumbo v0, "restartUserInBackground"

    return-object v0

    :pswitch_fb  #0xc6
    const-string/jumbo v0, "setHasTopUi"

    return-object v0

    :pswitch_ff  #0xc5
    const-string/jumbo v0, "setRenderThread"

    return-object v0

    :pswitch_103  #0xc4
    const-string v0, "isBackgroundRestricted"

    return-object v0

    :pswitch_106  #0xc3
    const-string/jumbo v0, "sendIntentSender"

    return-object v0

    :pswitch_10a  #0xc2
    const-string/jumbo v0, "sendIdleJobTrigger"

    return-object v0

    :pswitch_10e  #0xc1
    const-string/jumbo v0, "startConfirmDeviceCredentialIntent"

    return-object v0

    :pswitch_112  #0xc0
    const-string/jumbo v0, "notifyLockedProfile"

    return-object v0

    :pswitch_116  #0xbf
    const-string v0, "isVrModePackageEnabled"

    return-object v0

    :pswitch_119  #0xbe
    const-string v0, "getMemoryTrimLevel"

    return-object v0

    :pswitch_11c  #0xbd
    const-string/jumbo v0, "makePackageIdle"

    return-object v0

    :pswitch_120  #0xbc
    const-string v0, "killPackageDependents"

    return-object v0

    :pswitch_123  #0xbb
    const-string/jumbo v0, "unlockUser"

    return-object v0

    :pswitch_127  #0xba
    const-string/jumbo v0, "suppressResizeConfigChanges"

    return-object v0

    :pswitch_12b  #0xb9
    const-string v0, "enableBinderTracing"

    return-object v0

    :pswitch_12e  #0xb8
    const-string/jumbo v0, "stopBinderTrackingAndDump"

    return-object v0

    :pswitch_132  #0xb7
    const-string/jumbo v0, "startBinderTracking"

    return-object v0

    :pswitch_136  #0xb6
    const-string v0, "getPackageProcessState"

    return-object v0

    :pswitch_139  #0xb5
    const-string/jumbo v0, "noteAlarmFinish"

    return-object v0

    :pswitch_13d  #0xb4
    const-string/jumbo v0, "noteAlarmStart"

    return-object v0

    :pswitch_141  #0xb3
    const-string/jumbo v0, "updateLockTaskPackages"

    return-object v0

    :pswitch_145  #0xb2
    const-string v0, "dumpHeapFinished"

    return-object v0

    :pswitch_148  #0xb1
    const-string/jumbo v0, "setDumpHeapDebugLimit"

    return-object v0

    :pswitch_14c  #0xb0
    const-string v0, "getLockTaskModeState"

    return-object v0

    :pswitch_14f  #0xaf
    const-string/jumbo v0, "resizeTask"

    return-object v0

    :pswitch_153  #0xae
    const-string v0, "getTaskResizeableForFreeform"

    return-object v0

    :pswitch_156  #0xad
    const-string/jumbo v0, "setTaskResizeable"

    return-object v0

    :pswitch_15a  #0xac
    const-string/jumbo v0, "notifyCleartextNetwork"

    return-object v0

    :pswitch_15e  #0xab
    const-string/jumbo v0, "unregisterTaskStackListener"

    return-object v0

    :pswitch_162  #0xaa
    const-string/jumbo v0, "registerTaskStackListener"

    return-object v0

    :pswitch_166  #0xa9
    const-string v0, "bootAnimationComplete"

    return-object v0

    :pswitch_169  #0xa8
    const-string v0, "isTopOfTask"

    return-object v0

    :pswitch_16c  #0xa7
    const-string/jumbo v0, "startSystemLockTaskMode"

    return-object v0

    :pswitch_170  #0xa6
    const-string/jumbo v0, "startActivityFromRecents"

    return-object v0

    :pswitch_174  #0xa5
    const-string v0, "isInLockTaskMode"

    return-object v0

    :pswitch_177  #0xa4
    const-string/jumbo v0, "startUserInBackground"

    return-object v0

    :pswitch_17b  #0xa3
    const-string v0, "getTagForIntentSender"

    return-object v0

    :pswitch_17e  #0xa2
    const-string/jumbo v0, "setProcessMemoryTrimLevel"

    return-object v0

    :pswitch_182  #0xa1
    const-string v0, "getTaskBounds"

    return-object v0

    :pswitch_185  #0xa0
    const-string v0, "appNotRespondingViaProvider"

    return-object v0

    :pswitch_188  #0x9f
    const-string/jumbo v0, "performIdleMaintenance"

    return-object v0

    :pswitch_18c  #0x9e
    const-string/jumbo v0, "restart"

    return-object v0

    :pswitch_190  #0x9d
    const-string v0, "getFocusedRootTaskInfo"

    return-object v0

    :pswitch_193  #0x9c
    const-string/jumbo v0, "setFocusedRootTask"

    return-object v0

    :pswitch_197  #0x9b
    const-string/jumbo v0, "moveTaskToRootTask"

    return-object v0

    :pswitch_19b  #0x9a
    const-string v0, "getAllRootTaskInfos"

    return-object v0

    :pswitch_19e  #0x99
    const-string v0, "hang"

    return-object v0

    :pswitch_1a1  #0x98
    const-string/jumbo v0, "setUserIsMonkey"

    return-object v0

    :pswitch_1a5  #0x97
    const-string v0, "killUid"

    return-object v0

    :pswitch_1a8  #0x96
    const-string v0, "getLaunchedFromPackage"

    return-object v0

    :pswitch_1ab  #0x95
    const-string v0, "getIntentForIntentSender"

    return-object v0

    :pswitch_1ae  #0x94
    const-string v0, "collectWebViewProcesses"

    return-object v0

    :pswitch_1b1  #0x93
    const-string v0, "getBugreportWhitelistedPackages"

    return-object v0

    :pswitch_1b4  #0x92
    const-string v0, "launchBugReportHandlerApp"

    return-object v0

    :pswitch_1b7  #0x91
    const-string/jumbo v0, "requestRemoteBugReport"

    return-object v0

    :pswitch_1bb  #0x90
    const-string/jumbo v0, "requestFullBugReport"

    return-object v0

    :pswitch_1bf  #0x8f
    const-string/jumbo v0, "requestInteractiveBugReport"

    return-object v0

    :pswitch_1c3  #0x8e
    const-string/jumbo v0, "requestInteractiveBugReportWithDescription"

    return-object v0

    :pswitch_1c7  #0x8d
    const-string/jumbo v0, "requestWifiBugReport"

    return-object v0

    :pswitch_1cb  #0x8c
    const-string/jumbo v0, "requestTelephonyBugReport"

    return-object v0

    :pswitch_1cf  #0x8b
    const-string/jumbo v0, "requestBugReportWithDescription"

    return-object v0

    :pswitch_1d3  #0x8a
    const-string/jumbo v0, "requestBugReport"

    return-object v0

    :pswitch_1d7  #0x89
    const-string/jumbo v0, "requestSystemServerHeapDump"

    return-object v0

    :pswitch_1db  #0x88
    const-string v0, "getRunningUserIds"

    return-object v0

    :pswitch_1de  #0x87
    const-string/jumbo v0, "unregisterUserSwitchObserver"

    return-object v0

    :pswitch_1e2  #0x86
    const-string/jumbo v0, "registerUserSwitchObserver"

    return-object v0

    :pswitch_1e6  #0x85
    const-string/jumbo v0, "stopUserWithDelayedLocking"

    return-object v0

    :pswitch_1ea  #0x84
    const-string/jumbo v0, "stopUser"

    return-object v0

    :pswitch_1ee  #0x83
    const-string/jumbo v0, "startActivityAsUserWithFeature"

    return-object v0

    :pswitch_1f2  #0x82
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    :pswitch_1f6  #0x81
    const-string v0, "isIntentSenderAnActivity"

    return-object v0

    :pswitch_1f9  #0x80
    const-string/jumbo v0, "unstableProviderDied"

    return-object v0

    :pswitch_1fd  #0x7f
    const-string v0, "getLaunchedFromUid"

    return-object v0

    :pswitch_200  #0x7e
    const-string v0, "getCurrentUserId"

    return-object v0

    :pswitch_203  #0x7d
    const-string v0, "getCurrentUser"

    return-object v0

    :pswitch_206  #0x7c
    const-string v0, "killProcessesBelowForeground"

    return-object v0

    :pswitch_209  #0x7b
    const-string v0, "getMyMemoryState"

    return-object v0

    :pswitch_20c  #0x7a
    const-string/jumbo v0, "removeContentProviderExternalAsUser"

    return-object v0

    :pswitch_210  #0x79
    const-string/jumbo v0, "removeContentProviderExternal"

    return-object v0

    :pswitch_214  #0x78
    const-string v0, "getContentProviderExternal"

    return-object v0

    :pswitch_217  #0x77
    const-string v0, "killAllBackgroundProcesses"

    return-object v0

    :pswitch_21a  #0x76
    const-string/jumbo v0, "showBootMessage"

    return-object v0

    :pswitch_21e  #0x75
    const-string v0, "getProcessPss"

    return-object v0

    :pswitch_221  #0x74
    const-string/jumbo v0, "updatePersistentConfigurationWithAttribution"

    return-object v0

    :pswitch_225  #0x73
    const-string/jumbo v0, "updatePersistentConfiguration"

    return-object v0

    :pswitch_229  #0x72
    const-string v0, "isIntentSenderTargetedToPackage"

    return-object v0

    :pswitch_22c  #0x71
    const-string/jumbo v0, "unregisterProcessObserver"

    return-object v0

    :pswitch_230  #0x70
    const-string/jumbo v0, "registerProcessObserver"

    return-object v0

    :pswitch_234  #0x6f
    const-string/jumbo v0, "removeTask"

    return-object v0

    :pswitch_238  #0x6e
    const-string/jumbo v0, "setStopUserOnSwitch"

    return-object v0

    :pswitch_23c  #0x6d
    const-string v0, "getSwitchingToUserMessage"

    return-object v0

    :pswitch_23f  #0x6c
    const-string v0, "getSwitchingFromUserMessage"

    return-object v0

    :pswitch_242  #0x6b
    const-string/jumbo v0, "switchUser"

    return-object v0

    :pswitch_246  #0x6a
    const-string/jumbo v0, "setPackageScreenCompatMode"

    return-object v0

    :pswitch_24a  #0x69
    const-string v0, "isUserRunning"

    return-object v0

    :pswitch_24d  #0x68
    const-string v0, "dumpHeap"

    return-object v0

    :pswitch_250  #0x67
    const-string v0, "getProviderMimeTypeAsync"

    return-object v0

    :pswitch_253  #0x66
    const-string v0, "getProviderMimeType"

    return-object v0

    :pswitch_256  #0x65
    const-string v0, "crashApplicationWithTypeWithExtras"

    return-object v0

    :pswitch_259  #0x64
    const-string v0, "crashApplicationWithType"

    return-object v0

    :pswitch_25c  #0x63
    const-string v0, "isTopActivityImmersive"

    return-object v0

    :pswitch_25f  #0x62
    const-string v0, "handleApplicationStrictModeViolation"

    return-object v0

    :pswitch_262  #0x61
    const-string v0, "finishHeavyWeightApp"

    return-object v0

    :pswitch_265  #0x60
    const-string v0, "getRunningExternalApplications"

    return-object v0

    :pswitch_268  #0x5f
    const-string v0, "isUserAMonkey"

    return-object v0

    :pswitch_26b  #0x5e
    const-string v0, "killBackgroundProcesses"

    return-object v0

    :pswitch_26e  #0x5d
    const-string v0, "handleApplicationWtf"

    return-object v0

    :pswitch_271  #0x5c
    const-string v0, "killApplicationProcess"

    return-object v0

    :pswitch_274  #0x5b
    const-string v0, "getProcessMemoryInfo"

    return-object v0

    :pswitch_277  #0x5a
    const-string v0, "closeSystemDialogs"

    return-object v0

    :pswitch_27a  #0x59
    const-string v0, "killApplication"

    return-object v0

    :pswitch_27d  #0x58
    const-string v0, "addPackageDependency"

    return-object v0

    :pswitch_280  #0x57
    const-string v0, "handleIncomingUser"

    return-object v0

    :pswitch_283  #0x56
    const-string/jumbo v0, "unbindBackupAgent"

    return-object v0

    :pswitch_287  #0x55
    const-string v0, "backupAgentCreated"

    return-object v0

    :pswitch_28a  #0x54
    const-string v0, "bindBackupAgent"

    return-object v0

    :pswitch_28d  #0x53
    const-string/jumbo v0, "resumeAppSwitches"

    return-object v0

    :pswitch_291  #0x52
    const-string/jumbo v0, "stopAppSwitches"

    return-object v0

    :pswitch_295  #0x51
    const-string/jumbo v0, "shutdown"

    return-object v0

    :pswitch_299  #0x50
    const-string/jumbo v0, "profileControl"

    return-object v0

    :pswitch_29d  #0x4f
    const-string/jumbo v0, "peekService"

    return-object v0

    :pswitch_2a1  #0x4e
    const-string v0, "getRunningAppProcesses"

    return-object v0

    :pswitch_2a4  #0x4d
    const-string v0, "getServices"

    return-object v0

    :pswitch_2a7  #0x4c
    const-string v0, "killPids"

    return-object v0

    :pswitch_2aa  #0x4b
    const-string v0, "forceStopPackage"

    return-object v0

    :pswitch_2ad  #0x4a
    const-string/jumbo v0, "registerForegroundServiceObserver"

    return-object v0

    :pswitch_2b1  #0x49
    const-string/jumbo v0, "stopAppForUser"

    return-object v0

    :pswitch_2b5  #0x48
    const-string v0, "clearApplicationUserData"

    return-object v0

    :pswitch_2b8  #0x47
    const-string v0, "getProcessesInErrorState"

    return-object v0

    :pswitch_2bb  #0x46
    const-string v0, "getMemoryInfo"

    return-object v0

    :pswitch_2be  #0x45
    const-string/jumbo v0, "moveActivityTaskToBack"

    return-object v0

    :pswitch_2c2  #0x44
    const-string v0, "getForegroundServiceType"

    return-object v0

    :pswitch_2c5  #0x43
    const-string/jumbo v0, "setServiceForeground"

    return-object v0

    :pswitch_2c9  #0x42
    const-string/jumbo v0, "setProcessImportant"

    return-object v0

    :pswitch_2cd  #0x41
    const-string/jumbo v0, "unbindFinished"

    return-object v0

    :pswitch_2d1  #0x40
    const-string/jumbo v0, "setRequestedOrientation"

    return-object v0

    :pswitch_2d5  #0x3f
    const-string/jumbo v0, "removeContentProvider"

    return-object v0

    :pswitch_2d9  #0x3e
    const-string/jumbo v0, "noteWakeupAlarm"

    return-object v0

    :pswitch_2dd  #0x3d
    const-string v0, "enterSafeMode"

    return-object v0

    :pswitch_2e0  #0x3c
    const-string/jumbo v0, "unregisterIntentSenderCancelListener"

    return-object v0

    :pswitch_2e4  #0x3b
    const-string/jumbo v0, "registerIntentSenderCancelListenerEx"

    return-object v0

    :pswitch_2e8  #0x3a
    const-string v0, "getInfoForIntentSender"

    return-object v0

    :pswitch_2eb  #0x39
    const-string v0, "cancelIntentSender"

    return-object v0

    :pswitch_2ee  #0x38
    const-string v0, "getIntentSenderWithFeature"

    return-object v0

    :pswitch_2f1  #0x37
    const-string v0, "getIntentSender"

    return-object v0

    :pswitch_2f4  #0x36
    const-string/jumbo v0, "serviceDoneExecuting"

    return-object v0

    :pswitch_2f8  #0x35
    const-string v0, "getRecentTasks"

    return-object v0

    :pswitch_2fb  #0x34
    const-string/jumbo v0, "signalPersistentProcesses"

    return-object v0

    :pswitch_2ff  #0x33
    const-string/jumbo v0, "showWaitingForDebugger"

    return-object v0

    :pswitch_303  #0x32
    const-string/jumbo v0, "setActivityController"

    return-object v0

    :pswitch_307  #0x31
    const-string/jumbo v0, "revokeUriPermission"

    return-object v0

    :pswitch_30b  #0x30
    const-string v0, "grantUriPermission"

    return-object v0

    :pswitch_30e  #0x2f
    const-string v0, "checkUriPermissions"

    return-object v0

    :pswitch_311  #0x2e
    const-string v0, "checkUriPermission"

    return-object v0

    :pswitch_314  #0x2d
    const-string v0, "getProcessLimit"

    return-object v0

    :pswitch_317  #0x2c
    const-string/jumbo v0, "setProcessLimit"

    return-object v0

    :pswitch_31b  #0x2b
    const-string/jumbo v0, "stopServiceToken"

    return-object v0

    :pswitch_31f  #0x2a
    const-string/jumbo v0, "updateMccMncConfiguration"

    return-object v0

    :pswitch_323  #0x29
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    :pswitch_327  #0x28
    const-string v0, "getConfiguration"

    return-object v0

    :pswitch_32a  #0x27
    const-string v0, "finishInstrumentation"

    return-object v0

    :pswitch_32d  #0x26
    const-string v0, "addInstrumentationResults"

    return-object v0

    :pswitch_330  #0x25
    const-string/jumbo v0, "startInstrumentation"

    return-object v0

    :pswitch_334  #0x24
    const-string/jumbo v0, "setAlwaysFinish"

    return-object v0

    :pswitch_338  #0x23
    const-string/jumbo v0, "setAgentApp"

    return-object v0

    :pswitch_33c  #0x22
    const-string/jumbo v0, "setDebugApp"

    return-object v0

    :pswitch_340  #0x21
    const-string/jumbo v0, "publishService"

    return-object v0

    :pswitch_344  #0x20
    const-string/jumbo v0, "unbindService"

    return-object v0

    :pswitch_348  #0x1f
    const-string/jumbo v0, "updateServiceGroup"

    return-object v0

    :pswitch_34c  #0x1e
    const-string v0, "bindServiceInstance"

    return-object v0

    :pswitch_34f  #0x1d
    const-string v0, "bindService"

    return-object v0

    :pswitch_352  #0x1c
    const-string/jumbo v0, "stopService"

    return-object v0

    :pswitch_356  #0x1b
    const-string/jumbo v0, "startService"

    return-object v0

    :pswitch_35a  #0x1a
    const-string v0, "getRunningServiceControlPanel"

    return-object v0

    :pswitch_35d  #0x19
    const-string/jumbo v0, "refContentProvider"

    return-object v0

    :pswitch_361  #0x18
    const-string/jumbo v0, "publishContentProviders"

    return-object v0

    :pswitch_365  #0x17
    const-string v0, "getContentProvider"

    return-object v0

    :pswitch_368  #0x16
    const-string v0, "getTaskForActivity"

    return-object v0

    :pswitch_36b  #0x15
    const-string/jumbo v0, "moveTaskToFront"

    return-object v0

    :pswitch_36f  #0x14
    const-string v0, "getTasks"

    return-object v0

    :pswitch_372  #0x13
    const-string v0, "attachApplication"

    return-object v0

    :pswitch_375  #0x12
    const-string v0, "finishReceiver"

    return-object v0

    :pswitch_378  #0x11
    const-string/jumbo v0, "unbroadcastIntent"

    return-object v0

    :pswitch_37c  #0x10
    const-string v0, "broadcastIntentWithFeature"

    return-object v0

    :pswitch_37f  #0xf
    const-string v0, "broadcastIntent"

    return-object v0

    :pswitch_382  #0xe
    const-string/jumbo v0, "unregisterReceiver"

    return-object v0

    :pswitch_386  #0xd
    const-string/jumbo v0, "registerReceiverWithFeature"

    return-object v0

    :pswitch_38a  #0xc
    const-string/jumbo v0, "registerReceiver"

    return-object v0

    :pswitch_38e  #0xb
    const-string v0, "finishActivity"

    return-object v0

    :pswitch_391  #0xa
    const-string/jumbo v0, "unhandledBack"

    return-object v0

    :pswitch_395  #0x9
    const-string/jumbo v0, "startActivityWithFeature"

    return-object v0

    :pswitch_399  #0x8
    const-string/jumbo v0, "startActivity"

    return-object v0

    :pswitch_39d  #0x7
    const-string v0, "handleApplicationCrash"

    return-object v0

    :pswitch_3a0  #0x6
    const-string v0, "checkPermission"

    return-object v0

    :pswitch_3a3  #0x5
    const-string v0, "getUidProcessState"

    return-object v0

    :pswitch_3a6  #0x4
    const-string v0, "isUidActive"

    return-object v0

    :pswitch_3a9  #0x3
    const-string/jumbo v0, "unregisterUidObserver"

    return-object v0

    :pswitch_3ad  #0x2
    const-string/jumbo v0, "registerUidObserver"

    return-object v0

    :pswitch_3b1  #0x1
    const-string/jumbo v0, "openContentUri"

    return-object v0

    nop

    :pswitch_data_3b6
    .packed-switch 0x1
        :pswitch_3b1  #00000001
        :pswitch_3ad  #00000002
        :pswitch_3a9  #00000003
        :pswitch_3a6  #00000004
        :pswitch_3a3  #00000005
        :pswitch_3a0  #00000006
        :pswitch_39d  #00000007
        :pswitch_399  #00000008
        :pswitch_395  #00000009
        :pswitch_391  #0000000a
        :pswitch_38e  #0000000b
        :pswitch_38a  #0000000c
        :pswitch_386  #0000000d
        :pswitch_382  #0000000e
        :pswitch_37f  #0000000f
        :pswitch_37c  #00000010
        :pswitch_378  #00000011
        :pswitch_375  #00000012
        :pswitch_372  #00000013
        :pswitch_36f  #00000014
        :pswitch_36b  #00000015
        :pswitch_368  #00000016
        :pswitch_365  #00000017
        :pswitch_361  #00000018
        :pswitch_35d  #00000019
        :pswitch_35a  #0000001a
        :pswitch_356  #0000001b
        :pswitch_352  #0000001c
        :pswitch_34f  #0000001d
        :pswitch_34c  #0000001e
        :pswitch_348  #0000001f
        :pswitch_344  #00000020
        :pswitch_340  #00000021
        :pswitch_33c  #00000022
        :pswitch_338  #00000023
        :pswitch_334  #00000024
        :pswitch_330  #00000025
        :pswitch_32d  #00000026
        :pswitch_32a  #00000027
        :pswitch_327  #00000028
        :pswitch_323  #00000029
        :pswitch_31f  #0000002a
        :pswitch_31b  #0000002b
        :pswitch_317  #0000002c
        :pswitch_314  #0000002d
        :pswitch_311  #0000002e
        :pswitch_30e  #0000002f
        :pswitch_30b  #00000030
        :pswitch_307  #00000031
        :pswitch_303  #00000032
        :pswitch_2ff  #00000033
        :pswitch_2fb  #00000034
        :pswitch_2f8  #00000035
        :pswitch_2f4  #00000036
        :pswitch_2f1  #00000037
        :pswitch_2ee  #00000038
        :pswitch_2eb  #00000039
        :pswitch_2e8  #0000003a
        :pswitch_2e4  #0000003b
        :pswitch_2e0  #0000003c
        :pswitch_2dd  #0000003d
        :pswitch_2d9  #0000003e
        :pswitch_2d5  #0000003f
        :pswitch_2d1  #00000040
        :pswitch_2cd  #00000041
        :pswitch_2c9  #00000042
        :pswitch_2c5  #00000043
        :pswitch_2c2  #00000044
        :pswitch_2be  #00000045
        :pswitch_2bb  #00000046
        :pswitch_2b8  #00000047
        :pswitch_2b5  #00000048
        :pswitch_2b1  #00000049
        :pswitch_2ad  #0000004a
        :pswitch_2aa  #0000004b
        :pswitch_2a7  #0000004c
        :pswitch_2a4  #0000004d
        :pswitch_2a1  #0000004e
        :pswitch_29d  #0000004f
        :pswitch_299  #00000050
        :pswitch_295  #00000051
        :pswitch_291  #00000052
        :pswitch_28d  #00000053
        :pswitch_28a  #00000054
        :pswitch_287  #00000055
        :pswitch_283  #00000056
        :pswitch_280  #00000057
        :pswitch_27d  #00000058
        :pswitch_27a  #00000059
        :pswitch_277  #0000005a
        :pswitch_274  #0000005b
        :pswitch_271  #0000005c
        :pswitch_26e  #0000005d
        :pswitch_26b  #0000005e
        :pswitch_268  #0000005f
        :pswitch_265  #00000060
        :pswitch_262  #00000061
        :pswitch_25f  #00000062
        :pswitch_25c  #00000063
        :pswitch_259  #00000064
        :pswitch_256  #00000065
        :pswitch_253  #00000066
        :pswitch_250  #00000067
        :pswitch_24d  #00000068
        :pswitch_24a  #00000069
        :pswitch_246  #0000006a
        :pswitch_242  #0000006b
        :pswitch_23f  #0000006c
        :pswitch_23c  #0000006d
        :pswitch_238  #0000006e
        :pswitch_234  #0000006f
        :pswitch_230  #00000070
        :pswitch_22c  #00000071
        :pswitch_229  #00000072
        :pswitch_225  #00000073
        :pswitch_221  #00000074
        :pswitch_21e  #00000075
        :pswitch_21a  #00000076
        :pswitch_217  #00000077
        :pswitch_214  #00000078
        :pswitch_210  #00000079
        :pswitch_20c  #0000007a
        :pswitch_209  #0000007b
        :pswitch_206  #0000007c
        :pswitch_203  #0000007d
        :pswitch_200  #0000007e
        :pswitch_1fd  #0000007f
        :pswitch_1f9  #00000080
        :pswitch_1f6  #00000081
        :pswitch_1f2  #00000082
        :pswitch_1ee  #00000083
        :pswitch_1ea  #00000084
        :pswitch_1e6  #00000085
        :pswitch_1e2  #00000086
        :pswitch_1de  #00000087
        :pswitch_1db  #00000088
        :pswitch_1d7  #00000089
        :pswitch_1d3  #0000008a
        :pswitch_1cf  #0000008b
        :pswitch_1cb  #0000008c
        :pswitch_1c7  #0000008d
        :pswitch_1c3  #0000008e
        :pswitch_1bf  #0000008f
        :pswitch_1bb  #00000090
        :pswitch_1b7  #00000091
        :pswitch_1b4  #00000092
        :pswitch_1b1  #00000093
        :pswitch_1ae  #00000094
        :pswitch_1ab  #00000095
        :pswitch_1a8  #00000096
        :pswitch_1a5  #00000097
        :pswitch_1a1  #00000098
        :pswitch_19e  #00000099
        :pswitch_19b  #0000009a
        :pswitch_197  #0000009b
        :pswitch_193  #0000009c
        :pswitch_190  #0000009d
        :pswitch_18c  #0000009e
        :pswitch_188  #0000009f
        :pswitch_185  #000000a0
        :pswitch_182  #000000a1
        :pswitch_17e  #000000a2
        :pswitch_17b  #000000a3
        :pswitch_177  #000000a4
        :pswitch_174  #000000a5
        :pswitch_170  #000000a6
        :pswitch_16c  #000000a7
        :pswitch_169  #000000a8
        :pswitch_166  #000000a9
        :pswitch_162  #000000aa
        :pswitch_15e  #000000ab
        :pswitch_15a  #000000ac
        :pswitch_156  #000000ad
        :pswitch_153  #000000ae
        :pswitch_14f  #000000af
        :pswitch_14c  #000000b0
        :pswitch_148  #000000b1
        :pswitch_145  #000000b2
        :pswitch_141  #000000b3
        :pswitch_13d  #000000b4
        :pswitch_139  #000000b5
        :pswitch_136  #000000b6
        :pswitch_132  #000000b7
        :pswitch_12e  #000000b8
        :pswitch_12b  #000000b9
        :pswitch_127  #000000ba
        :pswitch_123  #000000bb
        :pswitch_120  #000000bc
        :pswitch_11c  #000000bd
        :pswitch_119  #000000be
        :pswitch_116  #000000bf
        :pswitch_112  #000000c0
        :pswitch_10e  #000000c1
        :pswitch_10a  #000000c2
        :pswitch_106  #000000c3
        :pswitch_103  #000000c4
        :pswitch_ff  #000000c5
        :pswitch_fb  #000000c6
        :pswitch_f7  #000000c7
        :pswitch_f4  #000000c8
        :pswitch_f0  #000000c9
        :pswitch_ec  #000000ca
        :pswitch_e8  #000000cb
        :pswitch_e5  #000000cc
        :pswitch_e1  #000000cd
        :pswitch_dd  #000000ce
        :pswitch_da  #000000cf
        :pswitch_d6  #000000d0
        :pswitch_d2  #000000d1
        :pswitch_ce  #000000d2
        :pswitch_ca  #000000d3
        :pswitch_c6  #000000d4
        :pswitch_c2  #000000d5
        :pswitch_be  #000000d6
        :pswitch_ba  #000000d7
        :pswitch_b6  #000000d8
        :pswitch_b2  #000000d9
        :pswitch_ae  #000000da
        :pswitch_aa  #000000db
        :pswitch_a6  #000000dc
        :pswitch_a2  #000000dd
        :pswitch_9e  #000000de
        :pswitch_9a  #000000df
        :pswitch_96  #000000e0
        :pswitch_92  #000000e1
        :pswitch_8f  #000000e2
        :pswitch_8c  #000000e3
        :pswitch_89  #000000e4
        :pswitch_86  #000000e5
        :pswitch_83  #000000e6
        :pswitch_80  #000000e7
        :pswitch_7d  #000000e8
        :pswitch_7a  #000000e9
        :pswitch_77  #000000ea
        :pswitch_74  #000000eb
        :pswitch_71  #000000ec
        :pswitch_6e  #000000ed
        :pswitch_6b  #000000ee
        :pswitch_68  #000000ef
        :pswitch_65  #000000f0
        :pswitch_62  #000000f1
        :pswitch_5f  #000000f2
        :pswitch_5c  #000000f3
        :pswitch_59  #000000f4
        :pswitch_56  #000000f5
        :pswitch_52  #000000f6
        :pswitch_4f  #000000f7
        :pswitch_4c  #000000f8
        :pswitch_48  #000000f9
        :pswitch_45  #000000fa
        :pswitch_42  #000000fb
        :pswitch_3f  #000000fc
        :pswitch_3b  #000000fd
        :pswitch_37  #000000fe
        :pswitch_34  #000000ff
        :pswitch_31  #00000100
        :pswitch_2e  #00000101
        :pswitch_2a  #00000102
        :pswitch_27  #00000103
        :pswitch_24  #00000104
        :pswitch_21  #00000105
        :pswitch_1d  #00000106
        :pswitch_19  #00000107
        :pswitch_15  #00000108
        :pswitch_12  #00000109
        :pswitch_e  #0000010a
        :pswitch_b  #0000010b
        :pswitch_8  #0000010c
        :pswitch_5  #0000010d
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x10c

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/app/IActivityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "android.app.IActivityManager"

    const/4 v10, 0x1

    if-lt v14, v10, :cond_15

    const v0, 0xffffff

    if-gt v14, v0, :cond_15

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_15
    packed-switch v14, :pswitch_data_205e

    packed-switch v14, :pswitch_data_2064

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_23  #0x5f4e5446
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_27  #0x10d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->enableAppDebugConfig(Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_48  #0x10c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->enableAmsDebugConfig(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_61  #0x10b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getBackgroundRestrictionExemptionReason(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_7a  #0x10a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->waitForBroadcastIdle()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_88  #0x109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->getUidProcessCapabilities(ILjava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_a5  #0x108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->queryIntentComponentsForIntentSender(Landroid/content/IIntentSender;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_c6  #0x107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->stopProfile(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_df  #0x106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->startProfile(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_f8  #0x105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_111  #0x104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->enableFgsNotificationRateLimit(Z)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_12a  #0x103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->enableAppFreezer(Z)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_143  #0x102
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->resetAppErrors()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_151  #0x101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killUidForPermissionChange(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_16e  #0x100
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isAppFreezerEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_180  #0xff
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isAppFreezerSupported()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_192  #0xfe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setProcessStateSummary([B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_1a7  #0xfd
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    sget-object v1, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/LocusId;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setActivityLocusContext(Landroid/content/ComponentName;Landroid/content/LocusId;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_1cc  #0xfc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->killProcessesWhenImperceptible([ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_1e5  #0xfb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getHistoricalProcessExitReasons(Ljava/lang/String;III)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_20a  #0xfa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->appNotResponding(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_21f  #0xf9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_240  #0xf8
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLifeMonitor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_252  #0xf7
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getDelegatedShellPermissions()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_264  #0xf6
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->stopDelegateShellPermissionIdentity()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_272  #0xf5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getOomAdjOfPid(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_28b  #0xf4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->dumpMiuiStackTraces([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_2a4  #0xf3
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getSensorDisableWhiteList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_2b6  #0xf2
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getUseDefaultCameraPipelineApp()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_2c8  #0xf1
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRotationFromDisplayApp()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_2da  #0xf0
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFixedRotationAppList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_2ec  #0xef
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getTopVideoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_2fe  #0xee
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getTopGameList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_310  #0xed
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getForceLandscapeApplication()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_322  #0xec
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFreeformCaptionInsetsHeightToZeroList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_334  #0xeb
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getApplicationLockActivityList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_346  #0xea
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFreeformResizeableWhiteList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_358  #0xe9
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getShowHiddenTaskIfFinishedWhiteList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_36a  #0xe8
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getHideSelfIfNewFreeformTaskWhiteList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_37c  #0xe7
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getStartFromFreeformBlackList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_38e  #0xe6
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFreeformNeedRelunchList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_3a0  #0xe5
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFreeformIgnoreRequestOrientationList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_3b2  #0xe4
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFreeformDisableOverlayList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_3c4  #0xe3
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFreeformVideoWhiteList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_3d6  #0xe2
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFreeformBlackList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_3e8  #0xe1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setSensorDisableWhiteList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_3fa  #0xe0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setUseDefaultCameraPipelineApp(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_40c  #0xdf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setRotationFromDisplayApp(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_41e  #0xde
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setFixedRotationAppList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_430  #0xdd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setTopVideoList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_442  #0xdc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setTopGameList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_454  #0xdb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setForceLandscapeApplication(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_466  #0xda
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setFreeformCaptionInsetsHeightToZeroList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_478  #0xd9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setApplicationLockActivityList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_48a  #0xd8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setFreeformResizeableWhiteList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_49c  #0xd7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setShowHiddenTaskIfFinishedWhiteList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_4ae  #0xd6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setHideSelfIfNewFreeformTaskWhiteList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_4c0  #0xd5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setStartFromFreeformBlackList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_4d2  #0xd4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setFreeformNeedRelunchList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_4e4  #0xd3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setFreeformIgnoreRequestOrientationList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_4f6  #0xd2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setFreeformDisableOverlayList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_508  #0xd1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setFreeformVideoWhiteList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_51a  #0xd0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setFreeformBlackList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_52c  #0xcf
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getCastPid()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_53e  #0xce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->startDelegateShellPermissionIdentity(I[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_557  #0xcd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_578  #0xcc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->backgroundAllowlistUid(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_58d  #0xcb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->waitForNetworkStateUpdate(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_5a2  #0xca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setPersistentVrThread(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_5b7  #0xc9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_5d0  #0xc8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->cancelTaskWindowTransition(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_5e5  #0xc7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->restartUserInBackground(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_5fe  #0xc6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setHasTopUi(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_613  #0xc5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setRenderThread(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_628  #0xc4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->isBackgroundRestricted(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_641  #0xc3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_69b  #0xc2
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->sendIdleJobTrigger()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_6a9  #0xc1
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_6ca  #0xc0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->notifyLockedProfile(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_6df  #0xbf
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_6fc  #0xbe
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getMemoryTrimLevel()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_70e  #0xbd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->makePackageIdle(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_727  #0xbc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->killPackageDependents(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_740  #0xbb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_769  #0xba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->suppressResizeConfigChanges(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_77e  #0xb9
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->enableBinderTracing()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_78c  #0xb8
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_7a9  #0xb7
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->startBinderTracking()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_7bb  #0xb6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_7d8  #0xb5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_801  #0xb4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_82a  #0xb3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_843  #0xb2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->dumpHeapFinished(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_858  #0xb1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-wide v3, v8

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_880  #0xb0
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getLockTaskModeState()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_892  #0xaf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_8b3  #0xae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getTaskResizeableForFreeform(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_8cc  #0xad
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->setTaskResizeable(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_8e5  #0xac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->notifyCleartextNetwork(I[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_8fe  #0xab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_917  #0xaa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_930  #0xa9
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->bootAnimationComplete()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_93e  #0xa8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_957  #0xa7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->startSystemLockTaskMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_96c  #0xa6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_98d  #0xa5
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isInLockTaskMode()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_99f  #0xa4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->startUserInBackground(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_9b8  #0xa3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_9d9  #0xa2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_9fa  #0xa1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_a13  #0xa0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_a28  #0x9f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->performIdleMaintenance()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_a36  #0x9e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->restart()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_a44  #0x9d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_a56  #0x9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setFocusedRootTask(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_a6b  #0x9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveTaskToRootTask(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_a88  #0x9a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_a9a  #0x99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->hang(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_ab3  #0x98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setUserIsMonkey(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_ac8  #0x97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killUid(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_ae5  #0x96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_afe  #0x95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_b1b  #0x94
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->collectWebViewProcesses()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_b2d  #0x93
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getBugreportWhitelistedPackages()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_b3f  #0x92
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->launchBugReportHandlerApp()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_b51  #0x91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->requestRemoteBugReport(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_b66  #0x90
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->requestFullBugReport()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_b74  #0x8f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->requestInteractiveBugReport()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_b82  #0x8e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->requestInteractiveBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_b9b  #0x8d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->requestWifiBugReport(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_bb4  #0x8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_bcd  #0x8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_bea  #0x8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->requestBugReport(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_bff  #0x89
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->requestSystemServerHeapDump()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_c0d  #0x88
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningUserIds()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_c1f  #0x87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_c38  #0x86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_c55  #0x85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopUserWithDelayedLocking(IZLandroid/app/IStopUserCallback;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_c7a  #0x84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    goto/16 :goto_205d

    :pswitch_c9f  #0x83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

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

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

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

    move v14, v10

    move-object/from16 v10, v25

    move-object/from16 v28, v11

    move-object/from16 v11, v26

    move-object v14, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityManager$Stub;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_d15  #0x82
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/ProfilerInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_d83  #0x81
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_da0  #0x80
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_db5  #0x7f
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_dce  #0x7e
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getCurrentUserId()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_de0  #0x7d
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_df3  #0x7c
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_e0c  #0x7b
    move-object/from16 v28, v11

    move-object v14, v12

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_e26  #0x7a
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_e43  #0x79
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_e5c  #0x78
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_e82  #0x77
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->killAllBackgroundProcesses()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_e90  #0x76
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->showBootMessage(Ljava/lang/CharSequence;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_ead  #0x75
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getProcessPss([I)[J

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_ec6  #0x74
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->updatePersistentConfigurationWithAttribution(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_ee7  #0x73
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_f00  #0x72
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_f1d  #0x71
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_f36  #0x70
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_f4f  #0x6f
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->removeTask(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_f68  #0x6e
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setStopUserOnSwitch(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_f7d  #0x6d
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getSwitchingToUserMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_f8f  #0x6c
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getSwitchingFromUserMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_fa1  #0x6b
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->switchUser(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_fba  #0x6a
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_fd3  #0x69
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->isUserRunning(II)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_ff0  #0x68
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/ParcelFileDescriptor;

    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/RemoteCallback;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_103f  #0x67
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getProviderMimeTypeAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1061  #0x66
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1082  #0x65
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move-object v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_10c7  #0x64
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v4, v11

    move-object v5, v12

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_10ff  #0x63
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isTopActivityImmersive()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1111  #0x62
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1132  #0x61
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->finishHeavyWeightApp()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1140  #0x60
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1152  #0x5f
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->isUserAMonkey()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1164  #0x5e
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->killBackgroundProcesses(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_117d  #0x5d
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    sget-object v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_11b2  #0x5c
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->killApplicationProcess(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_11cb  #0x5b
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_11e5  #0x5a
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_11fa  #0x59
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_121b  #0x58
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->addPackageDependency(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1230  #0x57
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_126c  #0x56
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1285  #0x55
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_12a2  #0x54
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->bindBackupAgent(Ljava/lang/String;III)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_12c7  #0x53
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->resumeAppSwitches()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_12d5  #0x52
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->stopAppSwitches()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_12e3  #0x51
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->shutdown(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_12fc  #0x50
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/ProfilerInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1331  #0x4f
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1356  #0x4e
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1368  #0x4d
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->getServices(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1385  #0x4c
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killPids([ILjava/lang/String;Z)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_13a6  #0x4b
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->forceStopPackage(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_13bf  #0x4a
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IForegroundServiceObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IForegroundServiceObserver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_13dc  #0x49
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->stopAppForUser(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_13f5  #0x48
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_141e  #0x47
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1430  #0x46
    move-object/from16 v28, v11

    move-object v14, v12

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_144a  #0x45
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1467  #0x44
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->getForegroundServiceType(Landroid/content/ComponentName;Landroid/os/IBinder;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1488  #0x43
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/Notification;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_14c3  #0x42
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_14e4  #0x41
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1505  #0x40
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_151e  #0x3f
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->removeContentProvider(Landroid/os/IBinder;Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1534  #0x3e
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v6

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/WorkSource;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1569  #0x3d
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->enterSafeMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1577  #0x3c
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1598  #0x3b
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->registerIntentSenderCancelListenerEx(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_15bd  #0x3a
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_15db  #0x39
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->cancelIntentSender(Landroid/content/IIntentSender;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_15f4  #0x38
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, [Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move/from16 v9, v23

    move-object/from16 v10, v24

    move/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1658  #0x37
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, [Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move-object/from16 v9, v22

    move/from16 v10, v23

    invoke-virtual/range {v0 .. v10}, Landroid/app/IActivityManager$Stub;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_16b5  #0x36
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_16d3  #0x35
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_16f5  #0x34
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->signalPersistentProcesses(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_170a  #0x33
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1727  #0x32
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1744  #0x31
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1779  #0x30
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_17ae  #0x2f
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->checkUriPermissions(Ljava/util/List;IIIILandroid/os/IBinder;)[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_17e5  #0x2e
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_181f  #0x2d
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getProcessLimit()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1831  #0x2c
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setProcessLimit(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1846  #0x2b
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_186b  #0x2a
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1888  #0x29
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_18a5  #0x28
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_18b8  #0x27
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_18dd  #0x26
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_18fe  #0x25
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1953  #0x24
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->setAlwaysFinish(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1968  #0x23
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1981  #0x22
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setDebugApp(Ljava/lang/String;ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_199e  #0x21
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_19bf  #0x20
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_19dc  #0x1f
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->updateServiceGroup(Landroid/app/IServiceConnection;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_19fd  #0x1e
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->bindServiceInstance(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1a54  #0x1d
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1aa4  #0x1c
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1ad1  #0x1b
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v8

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move v4, v11

    move-object v5, v12

    move-object/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1b17  #0x1a
    move-object/from16 v28, v11

    move-object v14, v12

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1b35  #0x19
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1b56  #0x18
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    sget-object v1, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v12, v15

    move-object v15, v13

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1b75  #0x17
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v12, 0x1

    invoke-virtual {v14, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move-object/from16 v34, v13

    move v13, v12

    move-object v12, v15

    move-object/from16 v15, v34

    goto/16 :goto_205d

    :pswitch_1bad  #0x16
    move-object/from16 v28, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IActivityManager$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v34, v13

    move v13, v12

    move-object v12, v15

    move-object/from16 v15, v34

    goto/16 :goto_205d

    :pswitch_1bce  #0x15
    move-object/from16 v28, v11

    move-object v14, v12

    move v12, v10

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

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v34, v13

    move v13, v12

    move-object v12, v15

    move-object/from16 v15, v34

    goto/16 :goto_205d

    :pswitch_1c07  #0x14
    move-object/from16 v28, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IActivityManager$Stub;->getTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move-object/from16 v34, v13

    move v13, v12

    move-object v12, v15

    move-object/from16 v15, v34

    goto/16 :goto_205d

    :pswitch_1c24  #0x13
    move-object/from16 v28, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->attachApplication(Landroid/app/IApplicationThread;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v34, v13

    move v13, v12

    move-object v12, v15

    move-object/from16 v15, v34

    goto/16 :goto_205d

    :pswitch_1c45  #0x12
    move-object/from16 v28, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    move-object/from16 v34, v13

    move v13, v12

    move-object v12, v15

    move-object/from16 v15, v34

    goto/16 :goto_205d

    :pswitch_1c7d  #0x11
    move-object/from16 v28, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v34, v13

    move v13, v12

    move-object v12, v15

    move-object/from16 v15, v34

    goto/16 :goto_205d

    :pswitch_1ca6  #0x10
    move-object/from16 v28, v11

    move-object v14, v12

    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v17

    move-object/from16 v1, v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v2, v18

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    move-object/from16 v3, v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v4, v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    move-object/from16 v5, v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move/from16 v6, v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v7, v23

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    move-object/from16 v8, v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v9, v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v10, v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v11, v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    move v0, v12

    move/from16 v12, v29

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Landroid/os/Bundle;

    move-object v0, v13

    move-object/from16 v13, v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v31

    move/from16 v14, v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v32

    move/from16 v15, v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move/from16 v16, v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v16}, Landroid/app/IActivityManager$Stub;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v14, p3

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v12, p0

    move-object/from16 v15, p2

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1d3e  #0xf
    move-object/from16 v28, v11

    move-object v14, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v15

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v13, p2

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move/from16 v9, v23

    move-object/from16 v10, v24

    move/from16 v11, v25

    move/from16 v12, v26

    move-object/from16 v29, v15

    move-object v15, v13

    move/from16 v13, v27

    invoke-virtual/range {v0 .. v13}, Landroid/app/IActivityManager$Stub;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v12, p0

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1dc1  #0xe
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v12, p0

    invoke-virtual {v12, v0}, Landroid/app/IActivityManager$Stub;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    goto/16 :goto_205d

    :pswitch_1ddb  #0xd
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v17

    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/IntentFilter;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v13

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v9, 0x1

    invoke-virtual {v14, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v13, v9

    goto/16 :goto_205d

    :pswitch_1e34  #0xc
    move v9, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v11

    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/IntentFilter;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v10

    move-object v3, v11

    move-object v4, v13

    move-object/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    move v13, v9

    goto/16 :goto_205d

    :pswitch_1e7f  #0xb
    move v9, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v13, v9

    goto/16 :goto_205d

    :pswitch_1ea9  #0xa
    move v9, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityManager$Stub;->unhandledBack()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move v13, v9

    goto/16 :goto_205d

    :pswitch_1eb8  #0x9
    move v9, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v13

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

    move-object v1, v13

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move v11, v9

    move/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v26, v13

    move v13, v11

    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->startActivityWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_205d

    :pswitch_1f2a  #0x8
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/ProfilerInfo;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    invoke-virtual/range {v0 .. v10}, Landroid/app/IActivityManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_205d

    :pswitch_1f92  #0x7
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/IActivityManager$Stub;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_205d

    :pswitch_1faf  #0x6
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2}, Landroid/app/IActivityManager$Stub;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_205d

    :pswitch_1fd0  #0x5
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/IActivityManager$Stub;->getUidProcessState(ILjava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_205d

    :pswitch_1fed  #0x4
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1}, Landroid/app/IActivityManager$Stub;->isUidActive(ILjava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_205d

    :pswitch_2009  #0x3
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/IActivityManager$Stub;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_205d

    :pswitch_2021  #0x2
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_205d

    :pswitch_2045  #0x1
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v12, v15

    move-object v15, v13

    move v13, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v12, v0}, Landroid/app/IActivityManager$Stub;->openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_205d
    return v13

    :pswitch_data_205e
    .packed-switch 0x5f4e5446
        :pswitch_23  #5f4e5446
    .end packed-switch

    :pswitch_data_2064
    .packed-switch 0x1
        :pswitch_2045  #00000001
        :pswitch_2021  #00000002
        :pswitch_2009  #00000003
        :pswitch_1fed  #00000004
        :pswitch_1fd0  #00000005
        :pswitch_1faf  #00000006
        :pswitch_1f92  #00000007
        :pswitch_1f2a  #00000008
        :pswitch_1eb8  #00000009
        :pswitch_1ea9  #0000000a
        :pswitch_1e7f  #0000000b
        :pswitch_1e34  #0000000c
        :pswitch_1ddb  #0000000d
        :pswitch_1dc1  #0000000e
        :pswitch_1d3e  #0000000f
        :pswitch_1ca6  #00000010
        :pswitch_1c7d  #00000011
        :pswitch_1c45  #00000012
        :pswitch_1c24  #00000013
        :pswitch_1c07  #00000014
        :pswitch_1bce  #00000015
        :pswitch_1bad  #00000016
        :pswitch_1b75  #00000017
        :pswitch_1b56  #00000018
        :pswitch_1b35  #00000019
        :pswitch_1b17  #0000001a
        :pswitch_1ad1  #0000001b
        :pswitch_1aa4  #0000001c
        :pswitch_1a54  #0000001d
        :pswitch_19fd  #0000001e
        :pswitch_19dc  #0000001f
        :pswitch_19bf  #00000020
        :pswitch_199e  #00000021
        :pswitch_1981  #00000022
        :pswitch_1968  #00000023
        :pswitch_1953  #00000024
        :pswitch_18fe  #00000025
        :pswitch_18dd  #00000026
        :pswitch_18b8  #00000027
        :pswitch_18a5  #00000028
        :pswitch_1888  #00000029
        :pswitch_186b  #0000002a
        :pswitch_1846  #0000002b
        :pswitch_1831  #0000002c
        :pswitch_181f  #0000002d
        :pswitch_17e5  #0000002e
        :pswitch_17ae  #0000002f
        :pswitch_1779  #00000030
        :pswitch_1744  #00000031
        :pswitch_1727  #00000032
        :pswitch_170a  #00000033
        :pswitch_16f5  #00000034
        :pswitch_16d3  #00000035
        :pswitch_16b5  #00000036
        :pswitch_1658  #00000037
        :pswitch_15f4  #00000038
        :pswitch_15db  #00000039
        :pswitch_15bd  #0000003a
        :pswitch_1598  #0000003b
        :pswitch_1577  #0000003c
        :pswitch_1569  #0000003d
        :pswitch_1534  #0000003e
        :pswitch_151e  #0000003f
        :pswitch_1505  #00000040
        :pswitch_14e4  #00000041
        :pswitch_14c3  #00000042
        :pswitch_1488  #00000043
        :pswitch_1467  #00000044
        :pswitch_144a  #00000045
        :pswitch_1430  #00000046
        :pswitch_141e  #00000047
        :pswitch_13f5  #00000048
        :pswitch_13dc  #00000049
        :pswitch_13bf  #0000004a
        :pswitch_13a6  #0000004b
        :pswitch_1385  #0000004c
        :pswitch_1368  #0000004d
        :pswitch_1356  #0000004e
        :pswitch_1331  #0000004f
        :pswitch_12fc  #00000050
        :pswitch_12e3  #00000051
        :pswitch_12d5  #00000052
        :pswitch_12c7  #00000053
        :pswitch_12a2  #00000054
        :pswitch_1285  #00000055
        :pswitch_126c  #00000056
        :pswitch_1230  #00000057
        :pswitch_121b  #00000058
        :pswitch_11fa  #00000059
        :pswitch_11e5  #0000005a
        :pswitch_11cb  #0000005b
        :pswitch_11b2  #0000005c
        :pswitch_117d  #0000005d
        :pswitch_1164  #0000005e
        :pswitch_1152  #0000005f
        :pswitch_1140  #00000060
        :pswitch_1132  #00000061
        :pswitch_1111  #00000062
        :pswitch_10ff  #00000063
        :pswitch_10c7  #00000064
        :pswitch_1082  #00000065
        :pswitch_1061  #00000066
        :pswitch_103f  #00000067
        :pswitch_ff0  #00000068
        :pswitch_fd3  #00000069
        :pswitch_fba  #0000006a
        :pswitch_fa1  #0000006b
        :pswitch_f8f  #0000006c
        :pswitch_f7d  #0000006d
        :pswitch_f68  #0000006e
        :pswitch_f4f  #0000006f
        :pswitch_f36  #00000070
        :pswitch_f1d  #00000071
        :pswitch_f00  #00000072
        :pswitch_ee7  #00000073
        :pswitch_ec6  #00000074
        :pswitch_ead  #00000075
        :pswitch_e90  #00000076
        :pswitch_e82  #00000077
        :pswitch_e5c  #00000078
        :pswitch_e43  #00000079
        :pswitch_e26  #0000007a
        :pswitch_e0c  #0000007b
        :pswitch_df3  #0000007c
        :pswitch_de0  #0000007d
        :pswitch_dce  #0000007e
        :pswitch_db5  #0000007f
        :pswitch_da0  #00000080
        :pswitch_d83  #00000081
        :pswitch_d15  #00000082
        :pswitch_c9f  #00000083
        :pswitch_c7a  #00000084
        :pswitch_c55  #00000085
        :pswitch_c38  #00000086
        :pswitch_c1f  #00000087
        :pswitch_c0d  #00000088
        :pswitch_bff  #00000089
        :pswitch_bea  #0000008a
        :pswitch_bcd  #0000008b
        :pswitch_bb4  #0000008c
        :pswitch_b9b  #0000008d
        :pswitch_b82  #0000008e
        :pswitch_b74  #0000008f
        :pswitch_b66  #00000090
        :pswitch_b51  #00000091
        :pswitch_b3f  #00000092
        :pswitch_b2d  #00000093
        :pswitch_b1b  #00000094
        :pswitch_afe  #00000095
        :pswitch_ae5  #00000096
        :pswitch_ac8  #00000097
        :pswitch_ab3  #00000098
        :pswitch_a9a  #00000099
        :pswitch_a88  #0000009a
        :pswitch_a6b  #0000009b
        :pswitch_a56  #0000009c
        :pswitch_a44  #0000009d
        :pswitch_a36  #0000009e
        :pswitch_a28  #0000009f
        :pswitch_a13  #000000a0
        :pswitch_9fa  #000000a1
        :pswitch_9d9  #000000a2
        :pswitch_9b8  #000000a3
        :pswitch_99f  #000000a4
        :pswitch_98d  #000000a5
        :pswitch_96c  #000000a6
        :pswitch_957  #000000a7
        :pswitch_93e  #000000a8
        :pswitch_930  #000000a9
        :pswitch_917  #000000aa
        :pswitch_8fe  #000000ab
        :pswitch_8e5  #000000ac
        :pswitch_8cc  #000000ad
        :pswitch_8b3  #000000ae
        :pswitch_892  #000000af
        :pswitch_880  #000000b0
        :pswitch_858  #000000b1
        :pswitch_843  #000000b2
        :pswitch_82a  #000000b3
        :pswitch_801  #000000b4
        :pswitch_7d8  #000000b5
        :pswitch_7bb  #000000b6
        :pswitch_7a9  #000000b7
        :pswitch_78c  #000000b8
        :pswitch_77e  #000000b9
        :pswitch_769  #000000ba
        :pswitch_740  #000000bb
        :pswitch_727  #000000bc
        :pswitch_70e  #000000bd
        :pswitch_6fc  #000000be
        :pswitch_6df  #000000bf
        :pswitch_6ca  #000000c0
        :pswitch_6a9  #000000c1
        :pswitch_69b  #000000c2
        :pswitch_641  #000000c3
        :pswitch_628  #000000c4
        :pswitch_613  #000000c5
        :pswitch_5fe  #000000c6
        :pswitch_5e5  #000000c7
        :pswitch_5d0  #000000c8
        :pswitch_5b7  #000000c9
        :pswitch_5a2  #000000ca
        :pswitch_58d  #000000cb
        :pswitch_578  #000000cc
        :pswitch_557  #000000cd
        :pswitch_53e  #000000ce
        :pswitch_52c  #000000cf
        :pswitch_51a  #000000d0
        :pswitch_508  #000000d1
        :pswitch_4f6  #000000d2
        :pswitch_4e4  #000000d3
        :pswitch_4d2  #000000d4
        :pswitch_4c0  #000000d5
        :pswitch_4ae  #000000d6
        :pswitch_49c  #000000d7
        :pswitch_48a  #000000d8
        :pswitch_478  #000000d9
        :pswitch_466  #000000da
        :pswitch_454  #000000db
        :pswitch_442  #000000dc
        :pswitch_430  #000000dd
        :pswitch_41e  #000000de
        :pswitch_40c  #000000df
        :pswitch_3fa  #000000e0
        :pswitch_3e8  #000000e1
        :pswitch_3d6  #000000e2
        :pswitch_3c4  #000000e3
        :pswitch_3b2  #000000e4
        :pswitch_3a0  #000000e5
        :pswitch_38e  #000000e6
        :pswitch_37c  #000000e7
        :pswitch_36a  #000000e8
        :pswitch_358  #000000e9
        :pswitch_346  #000000ea
        :pswitch_334  #000000eb
        :pswitch_322  #000000ec
        :pswitch_310  #000000ed
        :pswitch_2fe  #000000ee
        :pswitch_2ec  #000000ef
        :pswitch_2da  #000000f0
        :pswitch_2c8  #000000f1
        :pswitch_2b6  #000000f2
        :pswitch_2a4  #000000f3
        :pswitch_28b  #000000f4
        :pswitch_272  #000000f5
        :pswitch_264  #000000f6
        :pswitch_252  #000000f7
        :pswitch_240  #000000f8
        :pswitch_21f  #000000f9
        :pswitch_20a  #000000fa
        :pswitch_1e5  #000000fb
        :pswitch_1cc  #000000fc
        :pswitch_1a7  #000000fd
        :pswitch_192  #000000fe
        :pswitch_180  #000000ff
        :pswitch_16e  #00000100
        :pswitch_151  #00000101
        :pswitch_143  #00000102
        :pswitch_12a  #00000103
        :pswitch_111  #00000104
        :pswitch_f8  #00000105
        :pswitch_df  #00000106
        :pswitch_c6  #00000107
        :pswitch_a5  #00000108
        :pswitch_88  #00000109
        :pswitch_7a  #0000010a
        :pswitch_61  #0000010b
        :pswitch_48  #0000010c
        :pswitch_27  #0000010d
    .end packed-switch
.end method
