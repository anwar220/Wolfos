# classes4.dex

.class Lcom/android/internal/util/AsyncChannel$SyncMessenger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncMessenger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;
    }
.end annotation


# static fields
.field private static sCount:I

.field private static sStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/internal/util/AsyncChannel$SyncMessenger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic -$$Nest$smsendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static obtain()Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    .registers 6

    sget-object v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4e

    new-instance v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;-><init>()V

    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncHandler-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;-><init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler-IA;)V

    iput-object v2, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mMessenger:Landroid/os/Messenger;

    goto :goto_56

    :cond_4e
    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    :goto_56
    monitor-exit v0

    return-object v1

    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method private recycle()V
    .registers 3

    sget-object v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->sStack:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static sendMessageSynchronously(Landroid/os/Messenger;Landroid/os/Message;)Landroid/os/Message;
    .registers 8

    invoke-static {}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->obtain()Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_58

    if-eqz p1, :cond_58

    :try_start_9
    iget-object v2, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mMessenger:Landroid/os/Messenger;

    iput-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v2, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v2}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmLockObject(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_14} :catch_50
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_47

    :try_start_14
    iget-object v3, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmResultMsg(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2a

    const-string v3, "AsyncChannel"

    const-string/jumbo v5, "mResultMsg should be null here"

    invoke-static {v3, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3, v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fputmResultMsg(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)V

    :cond_2a
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v3, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmLockObject(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    iget-object v3, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fgetmResultMsg(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;

    move-result-object v3

    move-object v1, v3

    iget-object v3, v0, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->mHandler:Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    invoke-static {v3, v4}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->-$$Nest$fputmResultMsg(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)V

    monitor-exit v2

    goto :goto_58

    :catchall_44
    move-exception v3

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_44

    :try_start_46
    throw v3
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_47} :catch_50
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_47} :catch_47

    :catch_47
    move-exception v2

    const-string v3, "AsyncChannel"

    const-string v4, "error in sendMessageSynchronously"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    :catch_50
    move-exception v2

    const-string v3, "AsyncChannel"

    const-string v4, "error in sendMessageSynchronously"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_58
    :goto_58
    nop

    :goto_59
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel$SyncMessenger;->recycle()V

    return-object v1
.end method
