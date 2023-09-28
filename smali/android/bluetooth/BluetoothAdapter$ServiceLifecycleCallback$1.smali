# classes.dex

.class Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback$1;->this$0:Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback$1;->this$0:Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;->onBluetoothServiceDown()V

    return-void
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback$1;->this$0:Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter$ServiceLifecycleCallback;->onBluetoothServiceUp()V

    return-void
.end method

.method public onBrEdrDown()V
    .registers 1

    return-void
.end method
