# classes.dex

.class Landroid/bluetooth/BluetoothLeCallControl$3;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeCallControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothLeCallControl;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothLeCallControl;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl$3;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1b

    packed-switch v0, :pswitch_data_2e

    goto :goto_2d

    :pswitch_8  #0x67
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$3;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$3;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    goto :goto_2d

    :pswitch_1a  #0x66
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$3;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$3;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$3;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_2d
    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x66
        :pswitch_1a  #00000066
        :pswitch_8  #00000067
    .end packed-switch
.end method
