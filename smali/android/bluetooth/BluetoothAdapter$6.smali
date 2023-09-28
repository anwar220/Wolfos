# classes.dex

.class Landroid/bluetooth/BluetoothAdapter$6;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .registers 7

    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "onBluetoothServiceDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_e
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfputsService(Landroid/bluetooth/IBluetooth;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsProxyServiceStateCallbacks()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_43

    if-eqz v2, :cond_2f

    :try_start_2b
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V

    goto :goto_37

    :cond_2f
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "onBluetoothServiceDown: cb is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_37} :catch_38
    .catchall {:try_start_2b .. :try_end_37} :catchall_43

    :goto_37
    goto :goto_40

    :catch_38
    move-exception v3

    :try_start_39
    const-string v4, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    goto :goto_1d

    :cond_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .registers 8

    const-string v0, "BluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothServiceUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1e
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfputsService(Landroid/bluetooth/IBluetooth;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsProxyServiceStateCallbacks()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_39
    .catchall {:try_start_1e .. :try_end_39} :catchall_53

    if-eqz v2, :cond_3f

    :try_start_3b
    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V

    goto :goto_47

    :cond_3f
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "onBluetoothServiceUp: cb is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_47} :catch_48
    .catchall {:try_start_3b .. :try_end_47} :catchall_53

    :goto_47
    goto :goto_50

    :catch_48
    move-exception v3

    :try_start_49
    const-string v4, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_50
    goto :goto_2d

    :cond_51
    monitor-exit v0

    return-void

    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public onBrEdrDown()V
    .registers 7

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsServiceLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$sfgetsProxyServiceStateCallbacks()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_37

    if-eqz v2, :cond_23

    :try_start_1f
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManagerCallback;->onBrEdrDown()V

    goto :goto_2b

    :cond_23
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "onBrEdrDown: cb is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2b} :catch_2c
    .catchall {:try_start_1f .. :try_end_2b} :catchall_37

    :goto_2b
    goto :goto_34

    :catch_2c
    move-exception v3

    :try_start_2d
    const-string v4, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    goto :goto_11

    :cond_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_37

    throw v1
.end method
