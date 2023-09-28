# classes.dex

.class Landroid/bluetooth/BluetoothProfileConnector$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothProfileConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothProfileConnector;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothProfileConnector;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector$1;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$1;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$mdoBind(Landroid/bluetooth/BluetoothProfileConnector;)Z

    goto :goto_d

    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector$1;->this$0:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-static {v0}, Landroid/bluetooth/BluetoothProfileConnector;->-$$Nest$mdoUnbind(Landroid/bluetooth/BluetoothProfileConnector;)V

    :goto_d
    return-void
.end method
