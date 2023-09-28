# classes.dex

.class Landroid/bluetooth/BluetoothSocket$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket$1;->this$0:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "BluetoothSocket"

    const-string/jumbo v1, "true"

    :try_start_5
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_86

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1e

    goto :goto_86

    :cond_1e
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket$1;->this$0:Landroid/bluetooth/BluetoothSocket;

    const-string/jumbo v3, "persist.sys.bluetooth_restricte_state"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothSocket;->-$$Nest$fputmRstricteState(Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket$1;->this$0:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v2}, Landroid/bluetooth/BluetoothSocket;->-$$Nest$fgetmRstricteState(Landroid/bluetooth/BluetoothSocket;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket$1;->this$0:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v2}, Landroid/bluetooth/BluetoothSocket;->-$$Nest$mgetControlRecord(Landroid/bluetooth/BluetoothSocket;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket$1;->this$0:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v2}, Landroid/bluetooth/BluetoothSocket;->-$$Nest$fgetmControlRecord(Landroid/bluetooth/BluetoothSocket;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_85

    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket$1;->this$0:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v2}, Landroid/bluetooth/BluetoothSocket;->-$$Nest$fgetmControlRecord(Landroid/bluetooth/BluetoothSocket;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "isAllowUse"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addChangeCallback() uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "addChangeCallback(), close: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket$1;->this$0:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_85} :catch_87

    :cond_85
    goto :goto_8b

    :cond_86
    :goto_86
    return-void

    :catch_87
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8b
    return-void
.end method
