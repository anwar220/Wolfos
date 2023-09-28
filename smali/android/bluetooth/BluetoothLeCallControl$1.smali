# classes.dex

.class Landroid/bluetooth/BluetoothLeCallControl$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;


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

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl$1;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBluetoothStateChange: up="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeCallControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_21

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$1;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$mdoUnbind(Landroid/bluetooth/BluetoothLeCallControl;)V

    goto :goto_26

    :cond_21
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$1;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$mdoBind(Landroid/bluetooth/BluetoothLeCallControl;)Z

    :goto_26
    return-void
.end method
