# classes.dex

.class Landroid/bluetooth/le/PeriodicAdvertisingManager$1;
.super Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/PeriodicAdvertisingManager;->wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

.field final synthetic val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/bluetooth/le/PeriodicAdvertisingManager;Landroid/os/Handler;Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    iput-object p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$2;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$2;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;Landroid/bluetooth/le/PeriodicAdvertisingReport;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
    .registers 19

    move-object v8, p0

    iget-object v0, v8, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    invoke-static {v0}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/PeriodicAdvertisingManager;)Landroid/content/AttributionSource;

    move-result-object v0

    move-object v9, p2

    invoke-static {p2, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    iget-object v10, v8, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    new-instance v11, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;ILandroid/bluetooth/BluetoothDevice;IIII)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSyncLost(I)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSyncTransferred(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$4;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
