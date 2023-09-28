# classes2.dex

.class public Landroid/nfc/NfcControllerAlwaysOnListener;
.super Landroid/nfc/INfcControllerAlwaysOnListener$Stub;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapter:Landroid/nfc/INfcAdapter;

.field private mCurrentState:Z

.field private mIsRegistered:Z

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/nfc/NfcControllerAlwaysOnListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcControllerAlwaysOnListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/nfc/INfcAdapter;)V
    .registers 3

    invoke-direct {p0}, Landroid/nfc/INfcControllerAlwaysOnListener$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mCurrentState:Z

    iput-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z

    iput-object p1, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mAdapter:Landroid/nfc/INfcAdapter;

    return-void
.end method

.method private sendCurrentState(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_21

    :try_start_d
    new-instance v3, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/nfc/NfcControllerAlwaysOnListener$$ExternalSyntheticLambda0;-><init>(Landroid/nfc/NfcControllerAlwaysOnListener;Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_1b

    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v0
.end method


# virtual methods
.method synthetic lambda$sendCurrentState$0$android-nfc-NfcControllerAlwaysOnListener(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 3

    iget-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mCurrentState:Z

    invoke-interface {p1, v0}, Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;->onControllerAlwaysOnChanged(Z)V

    return-void
.end method

.method public onControllerAlwaysOnChanged(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mCurrentState:Z

    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;

    invoke-direct {p0, v1}, Landroid/nfc/NfcControllerAlwaysOnListener;->sendCurrentState(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V

    goto :goto_d

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public register(Ljava/util/concurrent/Executor;Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOnSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_34

    if-nez v0, :cond_9

    return-void

    :cond_9
    nop

    monitor-enter p0

    :try_start_b
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    monitor-exit p0

    return-void

    :cond_15
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_31

    if-nez v0, :cond_2f

    :try_start_1e
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->registerControllerAlwaysOnListener(Landroid/nfc/INfcControllerAlwaysOnListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_26} :catch_27
    .catchall {:try_start_1e .. :try_end_26} :catchall_31

    goto :goto_2f

    :catch_27
    move-exception v0

    :try_start_28
    sget-object v1, Landroid/nfc/NfcControllerAlwaysOnListener;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw v0

    :catch_34
    move-exception v0

    sget-object v1, Landroid/nfc/NfcControllerAlwaysOnListener;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregister(Landroid/nfc/NfcAdapter$ControllerAlwaysOnListener;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->isControllerAlwaysOnSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_3c

    if-nez v0, :cond_9

    return-void

    :cond_9
    nop

    monitor-enter p0

    :try_start_b
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    monitor-exit p0

    return-void

    :cond_15
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_39

    if-eqz v0, :cond_37

    :try_start_26
    iget-object v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->unregisterControllerAlwaysOnListener(Landroid/nfc/INfcControllerAlwaysOnListener;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_39

    goto :goto_34

    :catch_2c
    move-exception v0

    :try_start_2d
    sget-object v1, Landroid/nfc/NfcControllerAlwaysOnListener;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcControllerAlwaysOnListener;->mIsRegistered:Z

    :cond_37
    monitor-exit p0

    return-void

    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_39

    throw v0

    :catch_3c
    move-exception v0

    sget-object v1, Landroid/nfc/NfcControllerAlwaysOnListener;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
