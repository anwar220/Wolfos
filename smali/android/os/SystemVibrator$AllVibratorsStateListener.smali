# classes3.dex

.class Landroid/os/SystemVibrator$AllVibratorsStateListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllVibratorsStateListener"
.end annotation


# instance fields
.field private final mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mInitializedMask:I

.field private final mLock:Ljava/lang/Object;

.field private mVibratingMask:I

.field private final mVibratorListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/SystemVibrator$SingleVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    return-void
.end method


# virtual methods
.method hasRegisteredListeners()Z
    .registers 3

    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method synthetic lambda$onVibrating$0$android-os-SystemVibrator$AllVibratorsStateListener(IZ)V
    .registers 10

    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    shl-int v3, v2, p1

    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mInitializedMask:I

    and-int v5, v4, v3

    const/4 v6, 0x0

    if-nez v5, :cond_24

    or-int/2addr v4, v3

    iput v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mInitializedMask:I

    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    if-eqz p2, :cond_1f

    move v5, v3

    goto :goto_20

    :cond_1f
    move v5, v6

    :goto_20
    or-int/2addr v4, v5

    iput v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    goto :goto_32

    :cond_24
    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    and-int v5, v4, v3

    if-eqz v5, :cond_2c

    move v5, v2

    goto :goto_2d

    :cond_2c
    move v5, v6

    :goto_2d
    if-eq v5, p2, :cond_32

    xor-int/2addr v4, v3

    iput v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    :cond_32
    :goto_32
    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mInitializedMask:I

    if-eq v4, v1, :cond_38

    monitor-exit v0

    return-void

    :cond_38
    iget v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratingMask:I

    if-eqz v4, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v6

    :goto_3e
    move v1, v2

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_46

    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mDelegate:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    invoke-interface {v0, v1}, Landroid/os/Vibrator$OnVibratorStateChangedListener;->onVibratorStateChanged(Z)V

    return-void

    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method onVibrating(IZ)V
    .registers 5

    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0;-><init>(Landroid/os/SystemVibrator$AllVibratorsStateListener;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method register(Landroid/os/VibratorManager;)V
    .registers 11

    invoke-virtual {p1}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_8
    :try_start_8
    array-length v3, v0

    if-ge v2, v3, :cond_33

    aget v3, v0, v2

    new-instance v4, Landroid/os/SystemVibrator$SingleVibratorStateListener;

    invoke-direct {v4, p0, v2}, Landroid/os/SystemVibrator$SingleVibratorStateListener;-><init>(Landroid/os/SystemVibrator$AllVibratorsStateListener;I)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_35

    :try_start_12
    invoke-virtual {p1, v3}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v5

    iget-object v6, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v5, v6, v4}, Landroid/os/Vibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    iget-object v5, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_20} :catch_24
    .catchall {:try_start_12 .. :try_end_20} :catchall_35

    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catch_24
    move-exception v5

    :try_start_25
    invoke-virtual {p0, p1}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->unregister(Landroid/os/VibratorManager;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_29
    .catchall {:try_start_25 .. :try_end_28} :catchall_35

    goto :goto_31

    :catch_29
    move-exception v6

    :try_start_2a
    const-string v7, "Vibrator"

    const-string v8, "Failed to unregister listener while recovering from a failed register call"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    nop

    throw v5

    :cond_33
    monitor-exit v1

    return-void

    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw v2
.end method

.method unregister(Landroid/os/VibratorManager;)V
    .registers 7

    iget-object v0, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_28

    iget-object v2, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SystemVibrator$SingleVibratorStateListener;

    invoke-virtual {p1, v2}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Vibrator;->removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    iget-object v4, p0, Landroid/os/SystemVibrator$AllVibratorsStateListener;->mVibratorListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_9

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
