# classes.dex

.class Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;
.super Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;Landroid/content/AttributionSource;)V
    .registers 4

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    iput-object p3, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    return-void
.end method


# virtual methods
.method synthetic lambda$onAppStatusChanged$0$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method synthetic lambda$onConnectionStateChanged$1$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method synthetic lambda$onGetReport$2$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;BBI)V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V

    return-void
.end method

.method synthetic lambda$onInterruptData$5$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;B[B)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V

    return-void
.end method

.method synthetic lambda$onSetProtocol$4$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;B)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V

    return-void
.end method

.method synthetic lambda$onSetReport$3$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;BB[B)V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V

    return-void
.end method

.method synthetic lambda$onVirtualCableUnplug$6$android-bluetooth-BluetoothHidDevice$CallbackWrapper(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothHidDevice$Callback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidDevice$Callback;->onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 7

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 7

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    .registers 15

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda2;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;BBI)V

    invoke-interface {v2, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1e

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;B[B)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V
    .registers 7

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;B)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V
    .registers 15

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;BB[B)V

    invoke-interface {v2, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1e

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHidDevice$CallbackWrapper;->restoreCallingIdentity(J)V

    throw v2
.end method
