# classes.dex

.class Landroid/bluetooth/BluetoothDeviceGroup$3$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothDeviceGroup$3;->onGroupDiscoveryStatusChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

.field final synthetic val$groupId:I

.field final synthetic val$reason:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDeviceGroup$3;III)V
    .registers 5

    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$4;->this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

    iput p2, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$4;->val$groupId:I

    iput p3, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$4;->val$status:I

    iput p4, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$4;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$4;->this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

    iget-object v0, v0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothDeviceGroup;)Landroid/bluetooth/BluetoothGroupCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$4;->val$groupId:I

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$4;->val$status:I

    iget v3, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$4;->val$reason:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGroupCallback;->onGroupDiscoveryStatusChanged(III)V

    :cond_13
    return-void
.end method
