# classes4.dex

.class public interface abstract Lcom/android/server/usage/AppStandbyInternal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
    }
.end annotation


# direct methods
.method public static newAppStandbyController(Ljava/lang/ClassLoader;Landroid/content/Context;)Lcom/android/server/usage/AppStandbyInternal;
    .registers 7

    :try_start_0
    const-string v0, "com.android.server.usage.AppStandbyController"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v1

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to instantiate AppStandbyController!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract addActiveDeviceAdmin(Ljava/lang/String;I)V
.end method

.method public abstract addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
.end method

.method public abstract clearCarrierPrivilegedApps()V
.end method

.method public abstract clearLastUsedTimestampsForTest(Ljava/lang/String;I)V
.end method

.method public abstract dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract flushToDisk()V
.end method

.method public abstract getAppId(Ljava/lang/String;)I
.end method

.method public abstract getAppMinStandbyBucket(Ljava/lang/String;IIZ)I
.end method

.method public abstract getAppStandbyBucket(Ljava/lang/String;IJZ)I
.end method

.method public abstract getAppStandbyBucketReason(Ljava/lang/String;IJ)I
.end method

.method public abstract getAppStandbyBuckets(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBroadcastResponseExemptedPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBroadcastResponseExemptedRoles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBroadcastResponseFgThresholdState()I
.end method

.method public abstract getBroadcastResponseWindowDurationMs()J
.end method

.method public abstract getBroadcastSessionsDurationMs()J
.end method

.method public abstract getBroadcastSessionsWithResponseDurationMs()J
.end method

.method public abstract getEstimatedLaunchTime(Ljava/lang/String;I)J
.end method

.method public abstract getIdleUidsForUser(I)[I
.end method

.method public abstract getTimeSinceLastJobRun(Ljava/lang/String;I)J
.end method

.method public abstract getTimeSinceLastUsedByUser(Ljava/lang/String;I)J
.end method

.method public abstract initializeDefaultsForSystemApps(I)V
.end method

.method public abstract isActiveDeviceAdmin(Ljava/lang/String;I)Z
.end method

.method public abstract isAppIdleEnabled()Z
.end method

.method public abstract isAppIdleFiltered(Ljava/lang/String;IIJ)Z
.end method

.method public abstract isAppIdleFiltered(Ljava/lang/String;IJZ)Z
.end method

.method public abstract isInParole()Z
.end method

.method public abstract maybeUnrestrictApp(Ljava/lang/String;IIIII)V
.end method

.method public abstract onAdminDataAvailable()V
.end method

.method public abstract onBootPhase(I)V
.end method

.method public abstract onUserRemoved(I)V
.end method

.method public abstract postCheckIdleStates(I)V
.end method

.method public abstract postOneTimeCheckIdleStates()V
.end method

.method public abstract postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract postReportExemptedSyncStart(Ljava/lang/String;I)V
.end method

.method public abstract postReportSyncScheduled(Ljava/lang/String;IZ)V
.end method

.method public abstract removeListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
.end method

.method public abstract restrictApp(Ljava/lang/String;II)V
.end method

.method public abstract restrictApp(Ljava/lang/String;III)V
.end method

.method public abstract setActiveAdminApps(Ljava/util/Set;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setAdminProtectedPackages(Ljava/util/Set;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setAppIdleAsync(Ljava/lang/String;ZI)V
.end method

.method public abstract setAppStandbyBucket(Ljava/lang/String;IIII)V
.end method

.method public abstract setAppStandbyBuckets(Ljava/util/List;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;III)V"
        }
    .end annotation
.end method

.method public abstract setEstimatedLaunchTime(Ljava/lang/String;IJ)V
.end method

.method public abstract setLastJobRunTime(Ljava/lang/String;IJ)V
.end method

.method public abstract shouldNoteResponseEventForAllBroadcastSessions()Z
.end method
