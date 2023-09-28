# classes3.dex

.class Landroid/telephony/MbmsDownloadSession$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsDownloadSession;->bindAndInitialize()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/MbmsDownloadSession;


# direct methods
.method constructor <init>(Landroid/telephony/MbmsDownloadSession;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 5

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bindAndInitialize: Remote service returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    const/4 v1, 0x3

    const-string v2, "Middleware service binding returned null"

    invoke-static {v0, v1, v2}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v0}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v0}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$fgetmContext(Landroid/telephony/MbmsDownloadSession;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10

    nop

    invoke-static {p2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_6
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v2}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$fgetmSubscriptionId(Landroid/telephony/MbmsDownloadSession;)I

    move-result v2

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v3}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsDownloadSession;)Landroid/telephony/mbms/InternalDownloadSessionCallback;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I

    move-result v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_7e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_16} :catch_61

    nop

    const/4 v3, -0x1

    if-eq v2, v3, :cond_54

    if-eqz v2, :cond_2b

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    const-string v4, "Error returned during initialization"

    invoke-static {v3, v2, v4}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_2b
    :try_start_2b
    invoke-interface {v0}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v4}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$fgetmDeathRecipient(Landroid/telephony/MbmsDownloadSession;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_38} :catch_43

    nop

    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v1}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :catch_43
    move-exception v3

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    const/4 v5, 0x3

    const-string v6, "Middleware lost during initialization"

    invoke-static {v4, v5, v6}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_54
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-virtual {v1}, Landroid/telephony/MbmsDownloadSession;->close()V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Middleware must not return an unknown error code"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_61
    move-exception v2

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Runtime exception during initialization"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    const/16 v4, 0x67

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_7e
    move-exception v2

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Service died before initialization"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bindAndInitialize: Remote service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession$3;->this$0:Landroid/telephony/MbmsDownloadSession;

    invoke-static {v0}, Landroid/telephony/MbmsDownloadSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
