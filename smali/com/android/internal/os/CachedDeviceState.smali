# classes4.dex

.class public Lcom/android/internal/os/CachedDeviceState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;,
        Lcom/android/internal/os/CachedDeviceState$Readonly;
    }
.end annotation


# instance fields
.field private volatile mCharging:Z

.field private final mOnBatteryStopwatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mScreenInteractive:Z

.field private final mStopwatchesLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCharging(Lcom/android/internal/os/CachedDeviceState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnBatteryStopwatches(Lcom/android/internal/os/CachedDeviceState;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenInteractive(Lcom/android/internal/os/CachedDeviceState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/os/CachedDeviceState;->mScreenInteractive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStopwatchesLock(Lcom/android/internal/os/CachedDeviceState;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/CachedDeviceState;->mStopwatchesLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mStopwatchesLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/CachedDeviceState;->mScreenInteractive:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mStopwatchesLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    iput-boolean p2, p0, Lcom/android/internal/os/CachedDeviceState;->mScreenInteractive:Z

    return-void
.end method

.method private updateStopwatches(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mStopwatchesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_28

    if-eqz p1, :cond_1a

    iget-object v3, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-static {v3}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->-$$Nest$mstart(Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;)V

    goto :goto_25

    :cond_1a
    iget-object v3, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-static {v3}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->-$$Nest$mstop(Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;)V

    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method


# virtual methods
.method public getReadonlyClient()Lcom/android/internal/os/CachedDeviceState$Readonly;
    .registers 2

    new-instance v0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-direct {v0, p0}, Lcom/android/internal/os/CachedDeviceState$Readonly;-><init>(Lcom/android/internal/os/CachedDeviceState;)V

    return-object v0
.end method

.method public setCharging(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    if-eq v0, p1, :cond_b

    iput-boolean p1, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/CachedDeviceState;->updateStopwatches(Z)V

    :cond_b
    return-void
.end method

.method public setScreenInteractive(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/os/CachedDeviceState;->mScreenInteractive:Z

    return-void
.end method
