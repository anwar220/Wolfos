# classes2.dex

.class final Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;
.super Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpellCheckerSessionListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED_AFTER_CONNECTION:I = 0x2

.field private static final STATE_CLOSED_BEFORE_CONNECTION:I = 0x3

.field private static final STATE_CONNECTED:I = 0x1

.field private static final STATE_WAIT_CONNECTION:I = 0x0

.field private static final TASK_CANCEL:I = 0x1

.field private static final TASK_CLOSE:I = 0x3

.field private static final TASK_GET_SUGGESTIONS_MULTIPLE:I = 0x2

.field private static final TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE:I = 0x4


# instance fields
.field private mAsyncHandler:Landroid/os/Handler;

.field private mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

.field private final mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private mState:I

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic -$$Nest$mprocessTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    return-void
.end method

.method constructor <init>(Landroid/view/textservice/SpellCheckerSession;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    return-void
.end method

.method private getSpellCheckerSession()Landroid/view/textservice/SpellCheckerSession;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method private processCloseLocked()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :cond_a
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    packed-switch v0, :pswitch_data_44

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCloseLocked is called unexpectedly. mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    invoke-static {v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :pswitch_3b  #0x1
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    goto :goto_43

    :pswitch_3f  #0x0
    const/4 v0, 0x3

    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    nop

    :goto_43
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3f  #00000000
        :pswitch_3b  #00000001
    .end packed-switch
.end method

.method private processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    if-ne v0, v1, :cond_f

    :cond_d
    monitor-exit p0

    return-void

    :cond_f
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    const/4 v2, 0x1

    if-eqz v0, :cond_48

    if-eq v0, v2, :cond_48

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring processOrEnqueueTask due to unexpected mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    invoke-static {v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scp.mWhat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    invoke-static {v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->taskToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_48
    if-nez v0, :cond_7c

    iget v0, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    if-ne v0, v1, :cond_53

    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processCloseLocked()V

    monitor-exit p0

    return-void

    :cond_53
    const/4 v0, 0x0

    iget v3, p1, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    if-ne v3, v2, :cond_6e

    :goto_58
    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6e

    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    iget v3, v2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    if-ne v3, v1, :cond_6d

    move-object v0, v2

    :cond_6d
    goto :goto_58

    :cond_6e
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    if-eqz v0, :cond_7a

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_7a
    monitor-exit p0

    return-void

    :cond_7c
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_1 .. :try_end_7f} :catchall_84

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    return-void

    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v0
.end method

.method private processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    .registers 8

    if-nez p3, :cond_15

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    if-nez v0, :cond_7

    goto :goto_15

    :cond_7
    iput-object p1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a8

    :cond_15
    :goto_15
    iget v0, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    packed-switch v0, :pswitch_data_b8

    goto/16 :goto_a7

    :pswitch_1c  #0x4
    :try_start_1c
    iget-object v0, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    iget v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    invoke-interface {p1, v0, v1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_25

    goto/16 :goto_a7

    :catch_25
    move-exception v0

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get suggestions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    :pswitch_41  #0x3
    :try_start_41
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onClose()V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_a7

    :catch_45
    move-exception v0

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    :pswitch_61  #0x2
    :try_start_61
    iget-object v0, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mTextInfos:[Landroid/view/textservice/TextInfo;

    iget v1, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSuggestionsLimit:I

    iget-boolean v2, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSequentialWords:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/textservice/ISpellCheckerSession;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_6a} :catch_6b

    goto :goto_a7

    :catch_6b
    move-exception v0

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get suggestions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    :pswitch_87  #0x1
    :try_start_87
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->onCancel()V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_a7

    :catch_8b
    move-exception v0

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cancel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_a7
    nop

    :goto_a8
    iget v0, p2, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mWhat:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b6

    monitor-enter p0

    :try_start_ae
    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processCloseLocked()V

    monitor-exit p0

    goto :goto_b6

    :catchall_b3
    move-exception v0

    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_ae .. :try_end_b5} :catchall_b3

    throw v0

    :cond_b6
    :goto_b6
    return-void

    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_87  #00000001
        :pswitch_61  #00000002
        :pswitch_41  #00000003
        :pswitch_1c  #00000004
    .end packed-switch
.end method

.method private static stateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17  #0x3
    const-string v0, "STATE_CLOSED_BEFORE_CONNECTION"

    return-object v0

    :pswitch_1a  #0x2
    const-string v0, "STATE_CLOSED_AFTER_CONNECTION"

    return-object v0

    :pswitch_1d  #0x1
    const-string v0, "STATE_CONNECTED"

    return-object v0

    :pswitch_20  #0x0
    const-string v0, "STATE_WAIT_CONNECTION"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_1d  #00000001
        :pswitch_1a  #00000002
        :pswitch_17  #00000003
    .end packed-switch
.end method

.method private static taskToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17  #0x4
    const-string v0, "TASK_GET_SUGGESTIONS_MULTIPLE_FOR_SENTENCE"

    return-object v0

    :pswitch_1a  #0x3
    const-string v0, "TASK_CLOSE"

    return-object v0

    :pswitch_1d  #0x2
    const-string v0, "TASK_GET_SUGGESTIONS_MULTIPLE"

    return-object v0

    :pswitch_20  #0x1
    const-string v0, "TASK_CANCEL"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_1d  #00000002
        :pswitch_1a  #00000003
        :pswitch_17  #00000004
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .registers 5

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public close()V
    .registers 5

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public getSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .registers 6

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public getSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .registers 6

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;-><init>(I[Landroid/view/textservice/TextInfo;IZ)V

    invoke-direct {p0, v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processOrEnqueueTask(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;)V

    return-void
.end method

.method public isDisconnected()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    monitor-exit p0

    return v1

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSpellCheckerSession()Landroid/view/textservice/SpellCheckerSession;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/view/textservice/SpellCheckerSession;->handleOnGetSentenceSuggestionsMultiple([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    :cond_9
    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSpellCheckerSession()Landroid/view/textservice/SpellCheckerSession;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/view/textservice/SpellCheckerSession;->handleOnGetSuggestionsMultiple([Landroid/view/textservice/SuggestionsInfo;)V

    :cond_9
    return-void
.end method

.method public onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    sparse-switch v0, :sswitch_data_80

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    goto :goto_5e

    :sswitch_b
    monitor-exit p0

    return-void

    :sswitch_d
    nop

    if-nez p1, :cond_1b

    invoke-static {}, Landroid/view/textservice/SpellCheckerSession;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignoring onServiceConnected due to session=null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_1b
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mISpellCheckerSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_44

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_44

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SpellCheckerSession"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;-><init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mAsyncHandler:Landroid/os/Handler;

    :cond_44
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    :goto_47
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    goto :goto_47

    :cond_5c
    monitor-exit p0

    return-void

    :goto_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring onServiceConnected due to unexpected mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->mState:I

    invoke-static {v2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_7c
    move-exception v0

    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_1 .. :try_end_7e} :catchall_7c

    throw v0

    nop

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_d
        0x3 -> :sswitch_b
    .end sparse-switch
.end method
