# classes3.dex

.class Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;
.super Landroid/telephony/ims/aidl/ISipDelegate$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;


# direct methods
.method constructor <init>(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$cleanupSession$3(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/telephony/ims/stub/SipDelegate;->cleanupSession(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyMessageReceiveError$2(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;I)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/stub/SipDelegate;->notifyMessageReceiveError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$notifyMessageReceived$1(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/telephony/ims/stub/SipDelegate;->notifyMessageReceived(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$sendMessage$0(Landroid/telephony/ims/stub/SipDelegate;Landroid/telephony/ims/SipMessage;J)V
    .registers 4

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/ims/stub/SipDelegate;->sendMessage(Landroid/telephony/ims/SipMessage;J)V

    return-void
.end method


# virtual methods
.method public cleanupSession(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_d
    iget-object v3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_20

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public notifyMessageReceiveError(Ljava/lang/String;I)V
    .registers 8

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_d
    iget-object v3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, p1, p2}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_20

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public notifyMessageReceived(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_d
    iget-object v3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_20

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .registers 9

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_d
    iget-object v3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, p1, p2, p3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/SipDelegate;Landroid/telephony/ims/SipMessage;J)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_20

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
