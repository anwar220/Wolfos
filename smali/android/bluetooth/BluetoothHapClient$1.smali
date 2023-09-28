# classes.dex

.class Landroid/bluetooth/BluetoothHapClient$1;
.super Landroid/bluetooth/IBluetoothHapClientCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHapClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHapClient;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHapClientCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPresetInfoChanged$3(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient$Callback;->onPresetInfoChanged(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic lambda$onPresetSelected$0(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient$Callback;->onPresetSelected(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic lambda$onPresetSelectionFailed$1(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient$Callback;->onPresetSelectionFailed(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic lambda$onPresetSelectionForGroupFailed$2(Landroid/bluetooth/BluetoothHapClient$Callback;II)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient$Callback;->onPresetSelectionForGroupFailed(II)V

    return-void
.end method

.method static synthetic lambda$onSetPresetNameFailed$4(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient$Callback;->onSetPresetNameFailed(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic lambda$onSetPresetNameForGroupFailed$5(Landroid/bluetooth/BluetoothHapClient$Callback;II)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothHapClient$Callback;->onSetPresetNameForGroupFailed(II)V

    return-void
.end method


# virtual methods
.method public onPresetInfoChanged(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothHapPresetInfo;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHapClient$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_17

    :cond_38
    return-void
.end method

.method public onPresetSelected(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 9

    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHapClient$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_17

    :cond_38
    return-void
.end method

.method public onPresetSelectionFailed(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHapClient$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda5;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_17

    :cond_38
    return-void
.end method

.method public onPresetSelectionForGroupFailed(II)V
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

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

    check-cast v2, Landroid/bluetooth/BluetoothHapClient$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothHapClient$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_2f
    return-void
.end method

.method public onSetPresetNameFailed(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHapClient$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothHapClient$Callback;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_17

    :cond_38
    return-void
.end method

.method public onSetPresetNameForGroupFailed(II)V
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$1;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

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

    check-cast v2, Landroid/bluetooth/BluetoothHapClient$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothHapClient$1$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothHapClient$Callback;II)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_2f
    return-void
.end method
