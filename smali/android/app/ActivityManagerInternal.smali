# classes.dex

.class public abstract Landroid/app/ActivityManagerInternal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManagerInternal$BindServiceEventListener;,
        Landroid/app/ActivityManagerInternal$BroadcastEventListener;,
        Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;,
        Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;,
        Landroid/app/ActivityManagerInternal$VoiceInteractionManagerProvider;,
        Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
    }
.end annotation


# static fields
.field public static final ALLOW_FULL_ONLY:I = 0x2

.field public static final ALLOW_NON_FULL:I = 0x0

.field public static final ALLOW_NON_FULL_IN_PROFILE:I = 0x1

.field public static final ALLOW_PROFILES_OR_NON_FULL:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
.end method

.method public abstract addBindServiceEventListener(Landroid/app/ActivityManagerInternal$BindServiceEventListener;)V
.end method

.method public abstract addBroadcastEventListener(Landroid/app/ActivityManagerInternal$BroadcastEventListener;)V
.end method

.method public abstract addForegroundServiceStateListener(Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;)V
.end method

.method public abstract addPendingTopUid(IILandroid/app/IApplicationThread;)V
.end method

.method public abstract applyForegroundServiceNotification(Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;I)Landroid/app/ActivityManagerInternal$ServiceNotificationPolicy;
.end method

.method public abstract broadcastCloseSystemDialogs(Ljava/lang/String;)V
.end method

.method public abstract broadcastGlobalConfigurationChanged(IZ)V
.end method

.method public abstract broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILandroid/os/Bundle;)I
.end method

.method public abstract broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZLandroid/os/IBinder;[I)I
.end method

.method public abstract canStartMoreUsers()Z
.end method

.method public abstract checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract checkContentProviderUriPermission(Landroid/net/Uri;III)I
.end method

.method public abstract cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
.end method

.method public abstract clearPendingBackup(I)V
.end method

.method public abstract clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V
.end method

.method public abstract deletePendingTopUid(IJ)V
.end method

.method public abstract disconnectActivityFromServices(Ljava/lang/Object;)V
.end method

.method public abstract enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ensureBootCompleted()V
.end method

.method public abstract ensureNotSpecialUser(I)V
.end method

.method public abstract finishBooting()V
.end method

.method public abstract finishUserSwitch(Ljava/lang/Object;)V
.end method

.method public abstract forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;
.end method

.method public abstract getAppProfileStatsForDebugging(JI)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBootTimeTempAllowListDuration()J
.end method

.method public abstract getCurrentProfileIds()[I
.end method

.method public abstract getCurrentUser()Landroid/content/pm/UserInfo;
.end method

.method public abstract getCurrentUserId()I
.end method

.method public abstract getInstrumentationSourceUid(I)I
.end method

.method public abstract getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
.end method

.method public abstract getIsolatedProcesses(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxRunningUsers()I
.end method

.method public abstract getMemoryStateForProcesses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ProcessMemoryState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageNameByPid(I)Ljava/lang/String;
.end method

.method public abstract getPendingIntentActivityAsApp(ILandroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;
.end method

.method public abstract getPendingIntentActivityAsApp(I[Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;
.end method

.method public abstract getPendingIntentFlags(Landroid/content/IIntentSender;)I
.end method

.method public abstract getPendingIntentStats()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/PendingIntentStats;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPushMessagingOverQuotaBehavior()I
.end method

.method public abstract getRestrictionLevel(I)I
.end method

.method public abstract getRestrictionLevel(Ljava/lang/String;I)I
.end method

.method public abstract getServiceStartForegroundTimeout()I
.end method

.method public abstract getStartedUserIds()[I
.end method

.method public abstract getStorageMountMode(II)I
.end method

.method public abstract getTaskIdForActivity(Landroid/os/IBinder;Z)I
.end method

.method public abstract getUidCapability(I)I
.end method

.method public abstract getUidProcessState(I)I
.end method

.method public abstract handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract hasForegroundServiceNotification(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public abstract hasRunningActivity(ILjava/lang/String;)Z
.end method

.method public abstract hasRunningForegroundService(II)Z
.end method

.method public abstract hasStartedUserState(I)Z
.end method

.method public abstract inputDispatchingResumed(I)V
.end method

.method public abstract inputDispatchingTimedOut(IZLjava/lang/String;)J
.end method

.method public abstract inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)Z
.end method

.method public abstract isActivityStartsLoggingEnabled()Z
.end method

.method public abstract isAppBad(Ljava/lang/String;I)Z
.end method

.method public abstract isAppForeground(I)Z
.end method

.method public abstract isAppStartModeDisabled(ILjava/lang/String;)Z
.end method

.method public abstract isAssociatedCompanionApp(II)Z
.end method

.method public abstract isBackgroundActivityStartsEnabled()Z
.end method

.method public abstract isBgAutoRestrictedBucketFeatureFlagEnabled()Z
.end method

.method public abstract isBooted()Z
.end method

.method public abstract isBooting()Z
.end method

.method public abstract isCurrentProfile(I)Z
.end method

.method public abstract isDeviceOwner(I)Z
.end method

.method public abstract isPendingTopUid(I)Z
.end method

.method public abstract isProfileOwner(I)Z
.end method

.method public abstract isRuntimeRestarted()Z
.end method

.method public abstract isSystemReady()Z
.end method

.method public abstract isTempAllowlistedForFgsWhileInUse(I)Z
.end method

.method public abstract isUidActive(I)Z
.end method

.method public abstract isUserRunning(II)Z
.end method

.method public abstract killAllBackgroundProcessesExcept(II)V
.end method

.method public abstract killForegroundAppsForUser(I)V
.end method

.method public abstract killProcess(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract killProcessesForRemovedTask(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract monitor()V
.end method

.method public abstract noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
.end method

.method public abstract noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V
.end method

.method public abstract noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyNetworkPolicyRulesUpdated(IJ)V
.end method

.method public abstract notifyResolutionChanged()V
.end method

.method public abstract onForegroundServiceNotificationUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V
.end method

.method public abstract onUidBlockedReasonsChanged(II)V
.end method

.method public abstract onUserRemoved(I)V
.end method

.method public abstract onWakefulnessChanged(I)V
.end method

.method public abstract prepareForPossibleShutdown()V
.end method

.method public abstract registerAnrController(Landroid/app/AnrController;)V
.end method

.method public abstract registerNetworkPolicyUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
.end method

.method public abstract registerProcessObserver(Landroid/app/IProcessObserver;)V
.end method

.method public abstract reportCurKeyguardUsageEvent(Z)V
.end method

.method public abstract rescheduleAnrDialog(Ljava/lang/Object;)V
.end method

.method public abstract restart()V
.end method

.method public abstract scheduleAppGcs()V
.end method

.method public abstract sendForegroundProfileChanged(I)V
.end method

.method public abstract sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract setBooted(Z)V
.end method

.method public abstract setBooting(Z)V
.end method

.method public abstract setCastPid(ILjava/lang/String;I)V
.end method

.method public abstract setCompanionAppUids(ILjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDebugFlagsForStartingActivity(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;Ljava/lang/Object;)V
.end method

.method public abstract setDeviceIdleAllowlist([I[I)V
.end method

.method public abstract setDeviceOwnerUid(I)V
.end method

.method public abstract setHasOverlayUi(IZ)V
.end method

.method public abstract setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V
.end method

.method public abstract setPendingIntentAllowlistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;JIILjava/lang/String;)V
.end method

.method public abstract setProfileOwnerUid(Landroid/util/ArraySet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setStopUserOnSwitch(I)V
.end method

.method public abstract setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
.end method

.method public abstract setSwitchingToSystemUserMessage(Ljava/lang/String;)V
.end method

.method public abstract setVoiceInteractionManagerProvider(Landroid/app/ActivityManagerInternal$VoiceInteractionManagerProvider;)V
.end method

.method public abstract shouldConfirmCredentials(I)Z
.end method

.method public abstract startActivityAsUserEmpty(Landroid/os/Bundle;)I
.end method

.method public abstract startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z
.end method

.method public abstract startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;)V
.end method

.method public abstract startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
.end method

.method public abstract startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLandroid/os/IBinder;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation
.end method

.method public abstract stopAppForUser(Ljava/lang/String;I)V
.end method

.method public abstract stopForegroundServicesForChannel(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V
.end method

.method public abstract trimApplications()V
.end method

.method public abstract unregisterAnrController(Landroid/app/AnrController;)V
.end method

.method public abstract unregisterProcessObserver(Landroid/app/IProcessObserver;)V
.end method

.method public abstract updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;)V
.end method

.method public abstract updateBatteryStats(Landroid/content/ComponentName;IIZ)V
.end method

.method public abstract updateCpuStats()V
.end method

.method public abstract updateDeviceIdleTempAllowlist([IIZJIILjava/lang/String;I)V
.end method

.method public abstract updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
.end method

.method public abstract updateOomAdj()V
.end method

.method public abstract updateOomLevelsForDisplay(I)V
.end method
