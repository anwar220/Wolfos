# classes.dex

.class Landroid/bluetooth/BluetoothVolumeControl$1;
.super Landroid/bluetooth/IBluetoothVolumeControlCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothVolumeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothVolumeControl;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothVolumeControl;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$1;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothVolumeControlCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onVolumeOffsetChanged$0(Landroid/bluetooth/BluetoothVolumeControl$Callback;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl$Callback;->onVolumeOffsetChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method


# virtual methods
.method public onVolumeOffsetChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$1;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$1;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothVolumeControl;)Ljava/util/Map;

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

    check-cast v2, Landroid/bluetooth/BluetoothVolumeControl$Callback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothVolumeControl$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2}, Landroid/bluetooth/BluetoothVolumeControl$1$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothVolumeControl$Callback;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_17

    :cond_38
    return-void
.end method
