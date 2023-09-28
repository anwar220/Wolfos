# classes.dex

.class Landroid/bluetooth/BluetoothDeviceGroup$2;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceGroup;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDeviceGroup;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceGroup$2;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 4

    if-nez p1, :cond_8

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup$2;->this$0:Landroid/bluetooth/BluetoothDeviceGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceGroup;->-$$Nest$fputmAppRegistered(Landroid/bluetooth/BluetoothDeviceGroup;Z)V

    :cond_8
    return-void
.end method
