# classes3.dex

.class public Landroid/security/GenerateRkpKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/GenerateRkpKey$Status;
    }
.end annotation


# static fields
.field private static final NOTIFY_EMPTY:I = 0x0

.field private static final NOTIFY_KEY_GENERATED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GenerateRkpKey"

.field private static final TIMEOUT_MS:I = 0x3e8


# instance fields
.field private mBinder:Landroid/security/IGenerateRkpKeyService;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCountDownLatch(Landroid/security/GenerateRkpKey;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Landroid/security/GenerateRkpKey;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBinder(Landroid/security/GenerateRkpKey;Landroid/security/IGenerateRkpKeyService;)V
    .registers 2

    iput-object p1, p0, Landroid/security/GenerateRkpKey;->mBinder:Landroid/security/IGenerateRkpKeyService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/GenerateRkpKey$1;

    invoke-direct {v0, p0}, Landroid/security/GenerateRkpKey$1;-><init>(Landroid/security/GenerateRkpKey;)V

    iput-object v0, p0, Landroid/security/GenerateRkpKey;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/security/GenerateRkpKey;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bindAndSendCommand(II)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "GenerateRkpKey"

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/security/IGenerateRkpKeyService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/security/GenerateRkpKey;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1c

    return v3

    :cond_1c
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Landroid/security/GenerateRkpKey;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iget-object v6, p0, Landroid/security/GenerateRkpKey;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/security/GenerateRkpKey;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v1, v5, v4, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v5

    if-eqz v5, :cond_6a

    :try_start_35
    iget-object v5, p0, Landroid/security/GenerateRkpKey;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v6, 0x3e8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_3e} :catch_3f

    goto :goto_45

    :catch_3f
    move-exception v5

    const-string v6, "Interrupted: "

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_45
    iget-object v5, p0, Landroid/security/GenerateRkpKey;->mBinder:Landroid/security/IGenerateRkpKeyService;

    if-eqz v5, :cond_5b

    packed-switch p1, :pswitch_data_72

    const-string v5, "Invalid case for command"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :pswitch_52  #0x1
    invoke-interface {v5, p2}, Landroid/security/IGenerateRkpKeyService;->notifyKeyGenerated(I)V

    goto :goto_62

    :pswitch_56  #0x0
    invoke-interface {v5, p2}, Landroid/security/IGenerateRkpKeyService;->generateKey(I)I

    move-result v3

    goto :goto_62

    :cond_5b
    const-string v5, "Binder object is null; failed to bind to GenerateRkpKeyService."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    :goto_62
    iget-object v0, p0, Landroid/security/GenerateRkpKey;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/security/GenerateRkpKey;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return v3

    :cond_6a
    new-instance v0, Landroid/os/RemoteException;

    const-string v5, "Failed to bind to GenerateRkpKeyService"

    invoke-direct {v0, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_56  #00000000
        :pswitch_52  #00000001
    .end packed-switch
.end method


# virtual methods
.method public notifyEmpty(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/security/GenerateRkpKey;->bindAndSendCommand(II)I

    move-result v0

    return v0
.end method

.method public notifyKeyGenerated(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/security/GenerateRkpKey;->bindAndSendCommand(II)I

    return-void
.end method
