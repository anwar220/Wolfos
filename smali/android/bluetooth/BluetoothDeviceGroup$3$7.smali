# classes.dex

.class Landroid/bluetooth/BluetoothDeviceGroup$3$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothDeviceGroup$3;->onExclusiveAccessAvailable(ILandroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$groupId:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDeviceGroup$3;ILandroid/bluetooth/BluetoothDevice;)V
    .registers 4

    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$7;->this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

    iput p2, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$7;->val$groupId:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$7;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$7;->this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

    iget-object v0, v0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothDeviceGroup;)Landroid/bluetooth/BluetoothGroupCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$7;->val$groupId:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$7;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGroupCallback;->onExclusiveAccessAvailable(ILandroid/bluetooth/BluetoothDevice;)V

    :cond_11
    return-void
.end method
