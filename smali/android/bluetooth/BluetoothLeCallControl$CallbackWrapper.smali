# classes.dex

.class Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;
.super Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeCallControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Landroid/bluetooth/BluetoothLeCallControl;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothLeCallControl;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeCallControl$Callback;)V
    .registers 4

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    return-void
.end method


# virtual methods
.method synthetic lambda$onAcceptCall$0$android-bluetooth-BluetoothLeCallControl$CallbackWrapper(ILandroid/os/ParcelUuid;)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onAcceptCall(ILjava/util/UUID;)V

    return-void
.end method

.method synthetic lambda$onHoldCall$2$android-bluetooth-BluetoothLeCallControl$CallbackWrapper(ILandroid/os/ParcelUuid;)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onHoldCall(ILjava/util/UUID;)V

    return-void
.end method

.method synthetic lambda$onJoinCalls$5$android-bluetooth-BluetoothLeCallControl$CallbackWrapper(ILjava/util/List;)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onJoinCalls(ILjava/util/List;)V

    return-void
.end method

.method synthetic lambda$onPlaceCall$4$android-bluetooth-BluetoothLeCallControl$CallbackWrapper(ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onPlaceCall(ILjava/util/UUID;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onTerminateCall$1$android-bluetooth-BluetoothLeCallControl$CallbackWrapper(ILandroid/os/ParcelUuid;)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onTerminateCall(ILjava/util/UUID;)V

    return-void
.end method

.method synthetic lambda$onUnholdCall$3$android-bluetooth-BluetoothLeCallControl$CallbackWrapper(ILandroid/os/ParcelUuid;)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onUnholdCall(ILjava/util/UUID;)V

    return-void
.end method

.method public onAcceptCall(ILandroid/os/ParcelUuid;)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onBearerRegistered(I)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fputmCcid(Landroid/bluetooth/BluetoothLeCallControl;I)V

    goto :goto_12

    :cond_a
    const-string v0, "BluetoothLeCallControl"

    const-string/jumbo v1, "onBearerRegistered: mCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-void
.end method

.method public onHoldCall(ILandroid/os/ParcelUuid;)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onJoinCalls(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_21
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p1, v0}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILjava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_30

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_30
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public onPlaceCall(ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onTerminateCall(ILandroid/os/ParcelUuid;)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onUnholdCall(ILandroid/os/ParcelUuid;)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
