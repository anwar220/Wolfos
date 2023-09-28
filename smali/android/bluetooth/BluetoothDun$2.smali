# classes.dex

.class Landroid/bluetooth/BluetoothDun$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDun;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDun;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothDun$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDun;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDun;->-$$Nest$fputmDunService(Landroid/bluetooth/BluetoothDun;Landroid/bluetooth/IBluetoothDun;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x1f

    iget-object v2, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_1e
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDun;->-$$Nest$fputmDunService(Landroid/bluetooth/BluetoothDun;Landroid/bluetooth/IBluetoothDun;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$2;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->-$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    :cond_19
    return-void
.end method
