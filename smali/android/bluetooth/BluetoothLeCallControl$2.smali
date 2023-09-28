# classes.dex

.class Landroid/bluetooth/BluetoothLeCallControl$2;
.super Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;


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
.method constructor <init>(Landroid/bluetooth/BluetoothLeCallControl;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl$2;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string v0, "BluetoothLeCallControl"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$2;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothLeCallControl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fputmService(Landroid/bluetooth/BluetoothLeCallControl;Landroid/bluetooth/IBluetoothLeCallControl;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$2;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmHandler(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl$2;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmHandler(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const-string v0, "BluetoothLeCallControl"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$2;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$mdoUnbind(Landroid/bluetooth/BluetoothLeCallControl;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$2;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmHandler(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl$2;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fgetmHandler(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
