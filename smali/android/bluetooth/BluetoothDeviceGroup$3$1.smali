# classes.dex

.class Landroid/bluetooth/BluetoothDeviceGroup$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothDeviceGroup$3;->onGroupClientAppRegistered(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

.field final synthetic val$appId:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDeviceGroup$3;II)V
    .registers 4

    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$1;->this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

    iput p2, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$1;->val$status:I

    iput p3, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$1;->val$appId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$1;->this$1:Landroid/bluetooth/BluetoothDeviceGroup$3;

    iget-object v0, v0, Landroid/bluetooth/BluetoothDeviceGroup$3;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothDeviceGroup;)Landroid/bluetooth/BluetoothGroupCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$1;->val$status:I

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceGroup$3$1;->val$appId:I

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGroupCallback;->onGroupClientAppRegistered(II)V

    :cond_11
    return-void
.end method
