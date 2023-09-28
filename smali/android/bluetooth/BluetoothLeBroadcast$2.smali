# classes.dex

.class Landroid/bluetooth/BluetoothLeBroadcast$2;
.super Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothLeBroadcast;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothLeBroadcast;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothLeBroadcastCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onBroadcastMetadataChanged$8(Landroid/bluetooth/BluetoothLeBroadcast$Callback;ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    return-void
.end method

.method static synthetic lambda$onBroadcastStartFailed$1(Landroid/bluetooth/BluetoothLeBroadcast$Callback;I)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastStartFailed(I)V

    return-void
.end method

.method static synthetic lambda$onBroadcastStarted$0(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastStarted(II)V

    return-void
.end method

.method static synthetic lambda$onBroadcastStopFailed$3(Landroid/bluetooth/BluetoothLeBroadcast$Callback;I)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastStopFailed(I)V

    return-void
.end method

.method static synthetic lambda$onBroadcastStopped$2(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastStopped(II)V

    return-void
.end method

.method static synthetic lambda$onBroadcastUpdateFailed$7(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastUpdateFailed(II)V

    return-void
.end method

.method static synthetic lambda$onBroadcastUpdated$6(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onBroadcastUpdated(II)V

    return-void
.end method

.method static synthetic lambda$onPlaybackStarted$4(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onPlaybackStarted(II)V

    return-void
.end method

.method static synthetic lambda$onPlaybackStopped$5(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$Callback;->onPlaybackStopped(II)V

    return-void
.end method


# virtual methods
.method public onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda8;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda8;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_2f
    return-void
.end method

.method public onBroadcastStartFailed(I)V
    .registers 7

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2, p1}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_2f
    return-void
.end method

.method public onBroadcastStarted(II)V
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_2f
    return-void
.end method

.method public onBroadcastStopFailed(I)V
    .registers 7

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2, p1}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_2f
    return-void
.end method

.method public onBroadcastStopped(II)V
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda7;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda7;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_2f
    return-void
.end method

.method public onBroadcastUpdateFailed(II)V
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda5;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_2f
    return-void
.end method

.method public onBroadcastUpdated(II)V
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_2f
    return-void
.end method

.method public onPlaybackStarted(II)V
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda6;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_2f
    return-void
.end method

.method public onPlaybackStopped(II)V
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast$2;->this$0:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothLeBroadcast$2$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothLeBroadcast$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_2f
    return-void
.end method
