# classes3.dex

.class public final Landroid/os/Looper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Looper$Observer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Looper"

.field private static sMainLooper:Landroid/os/Looper;

.field private static sObserver:Landroid/os/Looper$Observer;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInLoop:Z

.field private mLogging:Landroid/util/Printer;

.field private final mMonitor:Landroid/os/perfdebug/MessageMonitor;

.field final mQueue:Landroid/os/MessageQueue;

.field private mSlowDeliveryDetected:Z

.field private mSlowDeliveryThresholdMs:J

.field private mSlowDispatchThresholdMs:J

.field final mThread:Ljava/lang/Thread;

.field private mTraceTag:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/MessageQueue;

    invoke-direct {v0, p1}, Landroid/os/MessageQueue;-><init>(Z)V

    iput-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-static {}, Landroid/os/perfdebug/MessageMonitor;->newMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/os/Looper;->mMonitor:Landroid/os/perfdebug/MessageMonitor;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/perfdebug/MessageMonitor;->setThreadNameAndTid(Ljava/lang/String;I)V

    return-void
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .registers 2

    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static loop()V
    .registers 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-boolean v1, v0, Landroid/os/Looper;->mInLoop:Z

    if-eqz v1, :cond_11

    const-string v1, "Looper"

    const-string v2, "Loop again would have the queued messages be executed before this one completed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/Looper;->mInLoop:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "log.looper."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".slow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput-boolean v4, v0, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    :cond_52
    invoke-static {v0, v1, v2, v3}, Landroid/os/Looper;->loopOnce(Landroid/os/Looper;JI)Z

    move-result v4

    if-nez v4, :cond_52

    return-void

    :cond_59
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No Looper; Looper.prepare() wasn\'t called on this thread."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static loopOnce(Landroid/os/Looper;JI)Z
    .registers 39

    move-object/from16 v1, p0

    move/from16 v2, p3

    iget-object v0, v1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object v13

    const/4 v0, 0x0

    if-nez v13, :cond_e

    return v0

    :cond_e
    iget-object v14, v1, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    const-string v11, " "

    if-eqz v14, :cond_42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> Dispatching to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_42
    sget-object v12, Landroid/os/Looper;->sObserver:Landroid/os/Looper$Observer;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v3

    iget-object v4, v13, Landroid/os/Message;->monitorInfo:Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    invoke-virtual {v3, v13, v4}, Landroid/os/perfdebug/MessageMonitor;->markDispatch(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;)V

    iget-wide v9, v1, Landroid/os/Looper;->mTraceTag:J

    iget-wide v3, v1, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    iget-wide v5, v1, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    if-lez v2, :cond_5c

    int-to-long v3, v2

    int-to-long v5, v2

    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    goto :goto_60

    :cond_5c
    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    :goto_60
    const-wide/16 v3, 0x0

    cmp-long v5, v21, v3

    const/4 v7, 0x1

    if-lez v5, :cond_6f

    iget-wide v5, v13, Landroid/os/Message;->when:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_6f

    move v5, v7

    goto :goto_70

    :cond_6f
    move v5, v0

    :goto_70
    move/from16 v23, v5

    cmp-long v5, v19, v3

    if-lez v5, :cond_78

    move v5, v7

    goto :goto_79

    :cond_78
    move v5, v0

    :goto_79
    move/from16 v24, v5

    if-nez v23, :cond_82

    if-eqz v24, :cond_80

    goto :goto_82

    :cond_80
    move v5, v0

    goto :goto_83

    :cond_82
    :goto_82
    move v5, v7

    :goto_83
    move/from16 v25, v5

    move/from16 v26, v24

    cmp-long v5, v9, v3

    if-eqz v5, :cond_9a

    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_9a

    iget-object v5, v13, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v5, v13}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v10, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_9a
    if-eqz v25, :cond_a1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    goto :goto_a2

    :cond_a1
    move-wide v5, v3

    :goto_a2
    move-wide/from16 v27, v5

    const/4 v5, 0x0

    if-eqz v12, :cond_ad

    invoke-interface {v12}, Landroid/os/Looper$Observer;->messageDispatchStarting()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    goto :goto_ae

    :cond_ad
    move-object v8, v5

    :goto_ae
    iget v5, v13, Landroid/os/Message;->workSourceUid:I

    invoke-static {v5}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v29

    :try_start_b4
    iget-object v5, v13, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v5, v13}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b9} :catch_1df
    .catchall {:try_start_b4 .. :try_end_b9} :catchall_1d7

    if-eqz v12, :cond_d2

    :try_start_bb
    invoke-interface {v12, v8, v13}, Landroid/os/Looper$Observer;->messageDispatched(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_d2

    :catchall_bf
    move-exception v0

    move-object v2, v8

    move-wide/from16 v33, v9

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    goto/16 :goto_1f4

    :catch_c8
    move-exception v0

    move-object/from16 v31, v8

    move-wide/from16 v33, v9

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    goto/16 :goto_1e7

    :cond_d2
    :goto_d2
    if-eqz v26, :cond_da

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_d8} :catch_c8
    .catchall {:try_start_bb .. :try_end_d8} :catchall_bf

    move-wide v15, v5

    goto :goto_db

    :cond_da
    move-wide v15, v3

    :goto_db
    invoke-static/range {v29 .. v30}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    cmp-long v3, v9, v3

    if-eqz v3, :cond_e5

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    :cond_e5
    invoke-virtual/range {p0 .. p0}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v3

    iget-object v4, v13, Landroid/os/Message;->monitorInfo:Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;

    invoke-virtual {v3, v13, v4}, Landroid/os/perfdebug/MessageMonitor;->markFinish(Landroid/os/Message;Landroid/os/perfdebug/MessageMonitor$MessageMonitorInfo;)V

    const-string v5, "Looper"

    if-eqz v23, :cond_136

    iget-boolean v3, v1, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    if-eqz v3, :cond_117

    iget-wide v3, v13, Landroid/os/Message;->when:J

    sub-long v3, v27, v3

    const-wide/16 v17, 0xa

    cmp-long v3, v3, v17

    if-gtz v3, :cond_10f

    const-string v3, "Drained"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, v1, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    move-object/from16 v32, v5

    move v2, v7

    move-object/from16 v31, v8

    move-wide/from16 v33, v9

    goto :goto_13d

    :cond_10f
    move-object/from16 v32, v5

    move v2, v7

    move-object/from16 v31, v8

    move-wide/from16 v33, v9

    goto :goto_13d

    :cond_117
    iget-wide v3, v13, Landroid/os/Message;->when:J

    const-string v0, "delivery"

    move-wide/from16 v17, v3

    move-wide/from16 v3, v21

    move-object v2, v5

    move-wide/from16 v5, v17

    move-object/from16 v32, v2

    move v2, v7

    move-object/from16 v31, v8

    move-wide/from16 v7, v27

    move-wide/from16 v33, v9

    move-object v9, v0

    move-object v10, v13

    invoke-static/range {v3 .. v10}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_13d

    iput-boolean v2, v1, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    goto :goto_13d

    :cond_136
    move-object/from16 v32, v5

    move v2, v7

    move-object/from16 v31, v8

    move-wide/from16 v33, v9

    :cond_13d
    :goto_13d
    if-eqz v24, :cond_14f

    const-string v17, "dispatch"

    move-object v0, v11

    move-object v5, v12

    move-wide/from16 v11, v19

    move-object v6, v13

    move-object v7, v14

    move-wide/from16 v13, v27

    move-object/from16 v18, v6

    invoke-static/range {v11 .. v18}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    goto :goto_153

    :cond_14f
    move-object v0, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    :goto_153
    if-eqz v7, :cond_177

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<<< Finished to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    cmp-long v8, p1, v3

    if-eqz v8, :cond_1d3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Thread identity changed from 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " while dispatching to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v6, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " what="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v6, Landroid/os/Message;->what:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v32

    invoke-static {v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d3
    invoke-virtual {v6}, Landroid/os/Message;->recycleUnchecked()V

    return v2

    :catchall_1d7
    move-exception v0

    move-wide/from16 v33, v9

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v2, v8

    goto :goto_1f4

    :catch_1df
    move-exception v0

    move-object/from16 v31, v8

    move-wide/from16 v33, v9

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    :goto_1e7
    if-eqz v5, :cond_1ef

    move-object/from16 v2, v31

    :try_start_1eb
    invoke-interface {v5, v2, v6, v0}, Landroid/os/Looper$Observer;->dispatchingThrewException(Ljava/lang/Object;Landroid/os/Message;Ljava/lang/Exception;)V

    goto :goto_1f1

    :cond_1ef
    move-object/from16 v2, v31

    :goto_1f1
    nop

    throw v0
    :try_end_1f3
    .catchall {:try_start_1eb .. :try_end_1f3} :catchall_1f3

    :catchall_1f3
    move-exception v0

    :goto_1f4
    invoke-static/range {v29 .. v30}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    cmp-long v3, v33, v3

    if-eqz v3, :cond_1fe

    invoke-static/range {v33 .. v34}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1fe
    throw v0
.end method

.method public static myLooper()Landroid/os/Looper;
    .registers 1

    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method public static myQueue()Landroid/os/MessageQueue;
    .registers 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public static prepare()V
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    return-void
.end method

.method private static prepare(Z)V
    .registers 3

    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    new-instance v1, Landroid/os/Looper;

    invoke-direct {v1, p0}, Landroid/os/Looper;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only one Looper may be created per thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prepareMainLooper()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    if-nez v1, :cond_1b

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/perfdebug/MessageMonitor;->enableMonitorMessage(Z)V

    monitor-exit v0

    return-void

    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The main Looper has already been prepared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public static setObserver(Landroid/os/Looper$Observer;)V
    .registers 1

    sput-object p0, Landroid/os/Looper;->sObserver:Landroid/os/Looper$Observer;

    return-void
.end method

.method private static showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z
    .registers 12

    sub-long v0, p4, p2

    cmp-long v2, v0, p0

    if-gez v2, :cond_8

    const/4 v2, 0x0

    return v2

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p7, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p7, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p7, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Looper"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v3}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/os/Looper;->mMonitor:Landroid/os/perfdebug/MessageMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/perfdebug/MessageMonitor;->dumpAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method public dumpAllLoopers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/os/Looper;->mMonitor:Landroid/os/perfdebug/MessageMonitor;

    invoke-virtual {v0, p1, p2}, Landroid/os/perfdebug/MessageMonitor;->dumpAllLoopers(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v2, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    if-eqz v2, :cond_2c

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/MessageQueue;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_2c
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;
    .registers 2

    iget-object v0, p0, Landroid/os/Looper;->mMonitor:Landroid/os/perfdebug/MessageMonitor;

    return-object v0
.end method

.method public getQueue()Landroid/os/MessageQueue;
    .registers 2

    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public isCurrentThread()Z
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public printLoopInfo(I)V
    .registers 3

    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->printMessageInfo(I)V

    return-void
.end method

.method public quit()V
    .registers 3

    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    return-void
.end method

.method public quitSafely()V
    .registers 3

    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    return-void
.end method

.method public setMessageLogging(Landroid/util/Printer;)V
    .registers 2

    iput-object p1, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    return-void
.end method

.method public setSlowLogThresholdMs(JJ)V
    .registers 5

    iput-wide p1, p0, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    iput-wide p3, p0, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    return-void
.end method

.method public setTraceTag(J)V
    .registers 3

    iput-wide p1, p0, Landroid/os/Looper;->mTraceTag:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
