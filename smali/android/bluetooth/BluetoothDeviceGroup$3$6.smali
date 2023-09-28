# classes.dex

.class Landroid/bluetooth/BluetoothDeviceGroup$3$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothDeviceGroup$3;->onExclusiveAccessChanged(IIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

.field final synthetic val$devices:Ljava/util/List;

.field final synthetic val$groupId:I

.field final synthetic val$status:I

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDeviceGroup$3;IIILjava/util/List;)V
    .registers 6

    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$6;->this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

    iput p2, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$6;->val$groupId:I

    iput p3, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$6;->val$value:I

    iput p4, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$6;->val$status:I

    iput-object p5, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$6;->val$devices:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$6;->this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

    iget-object v0, v0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothDeviceGroup;)Landroid/bluetooth/BluetoothGroupCallback;

    move-result-object v0

    if-eqz v0, :cond_15

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$6;->val$groupId:I

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$6;->val$value:I

    iget v3, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$6;->val$status:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$6;->val$devices:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothGroupCallback;->onExclusiveAccessChanged(IIILjava/util/List;)V

    :cond_15
    return-void
.end method
