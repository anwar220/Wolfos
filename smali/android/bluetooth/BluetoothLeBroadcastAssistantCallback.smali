# classes.dex

.class public Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;
.super Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAdapter:Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/IBluetoothLeBroadcastAssistant;)V
    .registers 3

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mIsRegistered:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mAdapter:Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    return-void
.end method

.method static synthetic lambda$onReceiveStateChanged$11(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    return-void
.end method

.method static synthetic lambda$onSearchStartFailed$1(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSearchStartFailed(I)V

    return-void
.end method

.method static synthetic lambda$onSearchStarted$0(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSearchStarted(I)V

    return-void
.end method

.method static synthetic lambda$onSearchStopFailed$3(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSearchStopFailed(I)V

    return-void
.end method

.method static synthetic lambda$onSearchStopped$2(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSearchStopped(I)V

    return-void
.end method

.method static synthetic lambda$onSourceAddFailed$6(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V

    return-void
.end method

.method static synthetic lambda$onSourceAdded$5(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic lambda$onSourceFound$4(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    return-void
.end method

.method static synthetic lambda$onSourceModified$7(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic lambda$onSourceModifyFailed$8(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic lambda$onSourceRemoveFailed$10(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic lambda$onSourceRemoved$9(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;->onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method


# virtual methods
.method public isAtLeastOneCallbackRegistered()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    :try_start_23
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_b

    :catchall_30
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onSearchStartFailed(I)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    :try_start_23
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda9;

    invoke-direct {v5, v1, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda9;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_b

    :catchall_30
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onSearchStarted(I)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    :try_start_23
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda6;

    invoke-direct {v5, v1, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_b

    :catchall_30
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onSearchStopFailed(I)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    :try_start_23
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_b

    :catchall_30
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onSearchStopped(I)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    :try_start_23
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda5;

    invoke-direct {v5, v1, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;I)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_b

    :catchall_30
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    :try_start_23
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda7;

    invoke-direct {v5, v1, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda7;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_b

    :catchall_30
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    :try_start_23
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_b

    :catchall_30
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    :try_start_23
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, p1}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_b

    :catchall_30
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    :try_start_23
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_b

    :catchall_30
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    :try_start_23
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda8;

    invoke-direct {v5, v1, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda8;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_b

    :catchall_30
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    :try_start_23
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda11;

    invoke-direct {v5, v1, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda11;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_b

    :catchall_30
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_38

    :try_start_23
    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda10;

    invoke-direct {v5, v1, p1, p2, p3}, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback$$ExternalSyntheticLambda10;-><init>(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_b

    :catchall_30
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public register(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mIsRegistered:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_39

    if-nez v0, :cond_2f

    :try_start_12
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mAdapter:Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->registerCallback(Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mIsRegistered:Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1a} :catch_1b
    .catchall {:try_start_12 .. :try_end_1a} :catchall_39

    goto :goto_2f

    :catch_1b
    move-exception v0

    :try_start_1c
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register broadcast assistant callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    monitor-exit p0

    return-void

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public unregister(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mIsRegistered:Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_41

    if-eqz v0, :cond_37

    :try_start_1a
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mAdapter:Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    invoke-interface {v0, p0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;->unregisterCallback(Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->mIsRegistered:Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_22} :catch_23
    .catchall {:try_start_1a .. :try_end_22} :catchall_41

    goto :goto_37

    :catch_23
    move-exception v0

    :try_start_24
    sget-object v1, Landroid/bluetooth/BluetoothLeBroadcastAssistantCallback;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister callback with service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :goto_37
    monitor-exit p0

    return-void

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback was not registered before"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_24 .. :try_end_43} :catchall_41

    throw v0
.end method
