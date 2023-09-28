# classes.dex

.class public interface abstract Landroid/app/ActivityThreadStub;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThreadStub$BoundsCompatInfo;
    }
.end annotation


# direct methods
.method public static get()Landroid/app/ActivityThreadStub;
    .registers 1

    const-class v0, Landroid/app/ActivityThreadStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThreadStub;

    return-object v0
.end method


# virtual methods
.method public abstract applyBoundsCompatIfNeeded(Landroid/view/DisplayInfo;Landroid/app/ActivityThread;)V
.end method

.method public abstract checkActivityLeak(Landroid/util/ArrayMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkScoutPersistentPackage(Ljava/lang/String;)Z
.end method

.method public abstract checkScoutStateOnInputEvent(I)V
.end method

.method public dumpLogText(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    return-void
.end method

.method public abstract dumpPeriodHistoryMessage(JI)V
.end method

.method public enableDebugConfig(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public abstract handleBoundsCompatInfoChanged(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/app/ActivityThread;)V
.end method

.method public abstract handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;Landroid/app/ActivityThread;)V
.end method

.method public ignoreChangeForMiuiCompat(Landroid/app/ActivityThread$ActivityClientRecord;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public inMiuiSizeCompatMode(Landroid/app/ActivityThread;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public abstract initMiuiFreeDrag(Landroid/content/Context;)V
.end method

.method public abstract judgeSystemApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
.end method

.method public abstract performDestroyCompatActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
.end method

.method public abstract registerApplicationScoutThread(I)V
.end method

.method public abstract setTopActivityClient(Landroid/app/ActivityThread$ActivityClientRecord;)V
.end method

.method public abstract updateAppScoutStateMachineState(I)V
.end method

.method public updateBoundsCompatBounds(Landroid/graphics/Rect;Landroid/app/ActivityThread;)V
    .registers 3

    return-void
.end method
