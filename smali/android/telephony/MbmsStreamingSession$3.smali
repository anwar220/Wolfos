# classes3.dex

.class Landroid/telephony/MbmsStreamingSession$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/MbmsStreamingSession;->bindAndInitialize()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/MbmsStreamingSession;


# direct methods
.method constructor <init>(Landroid/telephony/MbmsStreamingSession;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 5

    const-string v0, "MbmsStreamingSession"

    const-string v1, "bindAndInitialize: Remote service returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    const/4 v1, 0x3

    const-string v2, "Middleware service binding returned null"

    invoke-static {v0, v1, v2}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v0}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsStreamingSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v0}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$fgetmContext(Landroid/telephony/MbmsStreamingSession;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10

    const-string v0, "MbmsStreamingSession"

    invoke-static {p2}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    move-result-object v1

    const/16 v2, 0x67

    const/4 v3, 0x0

    :try_start_9
    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v4}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsStreamingSession;)Landroid/telephony/mbms/InternalStreamingSessionCallback;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v5}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$fgetmSubscriptionId(Landroid/telephony/MbmsStreamingSession;)I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->initialize(Landroid/telephony/mbms/IMbmsStreamingSessionCallback;I)I

    move-result v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_7b
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_19} :catch_64

    nop

    const/4 v2, -0x1

    if-eq v0, v2, :cond_57

    if-eqz v0, :cond_2e

    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    const-string v4, "Error returned during initialization"

    invoke-static {v2, v0, v4}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_2e
    :try_start_2e
    invoke-interface {v1}, Landroid/telephony/mbms/vendor/IMbmsStreamingService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v4}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$fgetmDeathRecipient(Landroid/telephony/MbmsStreamingSession;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3b} :catch_46

    nop

    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v2}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsStreamingSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :catch_46
    move-exception v2

    iget-object v4, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    const/4 v5, 0x3

    const-string v6, "Middleware lost during initialization"

    invoke-static {v4, v5, v6}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_57
    iget-object v2, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v2}, Landroid/telephony/MbmsStreamingSession;->close()V

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Middleware must not return an unknown error code"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_64
    move-exception v4

    const-string v5, "Runtime exception during initialization"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v5}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_7b
    move-exception v4

    const-string v5, "Service died before initialization"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v5}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$msendErrorToApp(Landroid/telephony/MbmsStreamingSession;ILjava/lang/String;)V

    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    invoke-static {}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/telephony/MbmsStreamingSession$3;->this$0:Landroid/telephony/MbmsStreamingSession;

    invoke-static {v0}, Landroid/telephony/MbmsStreamingSession;->-$$Nest$fgetmService(Landroid/telephony/MbmsStreamingSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
