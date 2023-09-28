# classes.dex

.class Landroid/bluetooth/BluetoothDun$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;


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

    iput-object p1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 6

    const-string v0, "BluetoothDun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_45

    :try_start_1b
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->-$$Nest$fgetmDunService(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    move-result-object v0

    if-nez v0, :cond_44

    const-string v0, "BluetoothDun"

    const-string/jumbo v1, "onBluetoothStateChange call bindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDun;->doBind()Z
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_30} :catch_3b
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_30} :catch_31

    goto :goto_44

    :catch_31
    move-exception v0

    const-string v1, "BluetoothDun"

    const-string/jumbo v2, "onBluetoothStateChange: could not bind to DUN service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    :catch_3b
    move-exception v0

    const-string v1, "BluetoothDun"

    const-string/jumbo v2, "onBluetoothStateChange: could not bind to DUN service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    :goto_44
    goto :goto_73

    :cond_45
    iget-object v0, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDun;->-$$Nest$fgetmConnection(Landroid/bluetooth/BluetoothDun;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    :try_start_4c
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v1}, Landroid/bluetooth/BluetoothDun;->-$$Nest$fgetmDunService(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/IBluetoothDun;

    move-result-object v1
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_74

    if-eqz v1, :cond_72

    :try_start_54
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDun;->-$$Nest$fputmDunService(Landroid/bluetooth/BluetoothDun;Landroid/bluetooth/IBluetoothDun;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v1}, Landroid/bluetooth/BluetoothDun;->-$$Nest$fgetmContext(Landroid/bluetooth/BluetoothDun;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDun$1;->this$0:Landroid/bluetooth/BluetoothDun;

    invoke-static {v2}, Landroid/bluetooth/BluetoothDun;->-$$Nest$fgetmConnection(Landroid/bluetooth/BluetoothDun;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_69} :catch_6a
    .catchall {:try_start_54 .. :try_end_69} :catchall_74

    goto :goto_72

    :catch_6a
    move-exception v1

    :try_start_6b
    const-string v2, "BluetoothDun"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_72
    :goto_72
    monitor-exit v0

    :goto_73
    return-void

    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_74

    throw v1
.end method
