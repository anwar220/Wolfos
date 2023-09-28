# classes.dex

.class Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;
.super Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnBluetoothActivityEnergyInfoProxy"
.end annotation


# instance fields
.field private mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V
    .registers 4

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    return-void
.end method

.method static synthetic lambda$onBluetoothActivityEnergyInfoAvailable$0(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V
    .registers 2

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;->onBluetoothActivityEnergyInfoError(I)V

    return-void
.end method

.method static synthetic lambda$onBluetoothActivityEnergyInfoAvailable$1(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;->onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    return-void
.end method

.method static synthetic lambda$onError$2(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;I)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;->onBluetoothActivityEnergyInfoError(I)V

    return-void
.end method


# virtual methods
.method public onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 7

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_35

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    if-nez v2, :cond_c

    goto :goto_35

    :cond_c
    nop

    nop

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_37

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-nez p1, :cond_23

    :try_start_1a
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2b

    :cond_23
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_30

    :goto_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_30
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_35
    :goto_35
    :try_start_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public onError(I)V
    .registers 7

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2a

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    if-nez v2, :cond_c

    goto :goto_2a

    :cond_c
    nop

    nop

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2c

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_18
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;I)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_25

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_25
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v1
.end method
