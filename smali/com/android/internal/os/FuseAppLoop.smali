# classes4.dex

.class public Lcom/android/internal/os/FuseAppLoop;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/FuseAppLoop$Args;,
        Lcom/android/internal/os/FuseAppLoop$BytesMap;,
        Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;,
        Lcom/android/internal/os/FuseAppLoop$CallbackEntry;,
        Lcom/android/internal/os/FuseAppLoop$UnmountedException;
    }
.end annotation


# static fields
.field private static final ARGS_POOL_SIZE:I = 0x32

.field private static final DEBUG:Z

.field private static final FUSE_FSYNC:I = 0x14

.field private static final FUSE_GETATTR:I = 0x3

.field private static final FUSE_LOOKUP:I = 0x1

.field private static final FUSE_MAX_WRITE:I = 0x20000

.field private static final FUSE_OK:I = 0x0

.field private static final FUSE_OPEN:I = 0xe

.field private static final FUSE_READ:I = 0xf

.field private static final FUSE_RELEASE:I = 0x12

.field private static final FUSE_WRITE:I = 0x10

.field private static final MIN_INODE:I = 0x2

.field public static final ROOT_INODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FuseAppLoop"

.field private static final sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mArgsPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/os/FuseAppLoop$Args;",
            ">;"
        }
    .end annotation
.end field

.field private final mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

.field private final mCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/FuseAppLoop$CallbackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInstance:J

.field private final mLock:Ljava/lang/Object;

.field private final mMountPointId:I

.field private mNextInode:I

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "FuseAppLoop"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/FuseAppLoop;->DEBUG:Z

    new-instance v0, Lcom/android/internal/os/FuseAppLoop$1;

    invoke-direct {v0}, Lcom/android/internal/os/FuseAppLoop$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/os/FuseAppLoop$BytesMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;-><init>(Lcom/android/internal/os/FuseAppLoop$BytesMap-IA;)V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    iput p1, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    if-nez p3, :cond_29

    sget-object p3, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    :cond_29
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/FuseAppLoop;->native_new(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    new-instance v0, Lcom/android/internal/os/FuseAppLoop$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/os/FuseAppLoop$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/FuseAppLoop;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static checkInode(J)I
    .registers 9

    const-wide/16 v2, 0x2

    const-wide/32 v4, 0x7fffffff

    const-string v6, "checkInode"

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    long-to-int v0, p0

    return v0
.end method

.method private getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Lcom/android/internal/os/FuseAppLoop;->checkInode(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v1, Landroid/system/ErrnoException;

    sget v2, Landroid/system/OsConstants;->ENOENT:I

    const-string v3, "getCallbackEntryOrThrowLocked"

    invoke-direct {v1, v3, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static getError(Ljava/lang/Exception;)I
    .registers 3

    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v1, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v0, v1, :cond_f

    neg-int v1, v0

    return v1

    :cond_f
    sget v0, Landroid/system/OsConstants;->EBADF:I

    neg-int v0, v0

    return v0
.end method

.method private onCommand(IJJJI[B)V
    .registers 15

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/internal/os/FuseAppLoop$Args;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseAppLoop$Args;-><init>(Lcom/android/internal/os/FuseAppLoop$Args-IA;)V

    goto :goto_1a

    :cond_12
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/FuseAppLoop$Args;

    :goto_1a
    iput-wide p2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    iput-wide p4, v1, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    iput-wide p6, v1, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    iput p8, v1, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    iput-object p9, v1, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    invoke-direct {p0, p4, p5}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v2, v2, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object v3, v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_53

    :cond_3e
    new-instance v2, Landroid/system/ErrnoException;

    const-string/jumbo v3, "onCommand"

    sget v4, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {v2, v3, v4}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_49} :catch_4b
    .catchall {:try_start_3 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v1

    goto :goto_55

    :catch_4b
    move-exception v1

    :try_start_4c
    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v2

    invoke-direct {p0, p2, p3, v2}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    :goto_53
    monitor-exit v0

    return-void

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_49

    throw v1
.end method

.method private onOpen(JJ)[B
    .registers 15

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p3, p4}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    if-nez v2, :cond_25

    iget-wide v4, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_24

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyOpen(JJJ)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v2, p3, p4}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->startUsing(J)[B

    move-result-object v2
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_22} :catch_32
    .catchall {:try_start_3 .. :try_end_22} :catchall_30

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_30

    return-object v2

    :cond_24
    goto :goto_3a

    :cond_25
    :try_start_25
    new-instance v2, Landroid/system/ErrnoException;

    const-string/jumbo v3, "onOpen"

    sget v4, Landroid/system/OsConstants;->EMFILE:I

    invoke-direct {v2, v3, v4}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_30
    .catch Landroid/system/ErrnoException; {:try_start_25 .. :try_end_30} :catch_32
    .catchall {:try_start_25 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v1

    goto :goto_3d

    :catch_32
    move-exception v1

    :try_start_33
    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    :goto_3a
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_30

    throw v1
.end method

.method private recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method private replySimpleLocked(JI)V
    .registers 10

    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_e

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    :cond_e
    return-void
.end method


# virtual methods
.method public getMountPointId()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 27

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/FuseAppLoop$Args;

    iget-object v13, v12, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-wide v14, v12, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    iget-wide v8, v12, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    iget v7, v12, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    iget-wide v4, v12, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    iget-object v6, v12, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    :try_start_15
    iget v0, v11, Landroid/os/Message;->what:I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_17} :catch_217

    sparse-switch v0, :sswitch_data_242

    move-object v11, v6

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-wide/from16 v19, v14

    move-wide v14, v4

    :try_start_22
    new-instance v0, Ljava/lang/IllegalArgumentException;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_24} :catch_212

    goto/16 :goto_1f4

    :sswitch_26
    :try_start_26
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onFsync()V

    iget-object v3, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_67

    :try_start_2e
    iget-wide v1, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_5d

    const-wide/16 v16, 0x0

    cmp-long v0, v1, v16

    if-eqz v0, :cond_48

    const/4 v0, 0x0

    move-wide/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v3

    move-wide/from16 v2, v16

    move-wide/from16 v19, v4

    move-wide v4, v8

    move-object v11, v6

    move v6, v0

    :try_start_44
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    goto :goto_4d

    :cond_48
    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-object v11, v6

    :goto_4d
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v18

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-wide/from16 v23, v14

    move-wide/from16 v14, v19

    move-wide/from16 v19, v23

    goto/16 :goto_1e2

    :catchall_5d
    move-exception v0

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-object v11, v6

    :goto_63
    monitor-exit v18
    :try_end_64
    .catchall {:try_start_44 .. :try_end_64} :catchall_65

    :try_start_64
    throw v0

    :catchall_65
    move-exception v0

    goto :goto_63

    :catch_67
    move-exception v0

    move-object/from16 v2, p1

    move-object v3, v6

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-wide/from16 v19, v14

    move-wide v14, v4

    goto/16 :goto_221

    :sswitch_74
    move-wide/from16 v19, v4

    move-object v11, v6

    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onRelease()V

    iget-object v6, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7f} :catch_b0

    :try_start_7f
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_81
    .catchall {:try_start_7f .. :try_end_81} :catchall_a9

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_92

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-wide v4, v8

    move-object/from16 v16, v6

    move v6, v0

    :try_start_8e
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    goto :goto_94

    :cond_92
    move-object/from16 v16, v6

    :goto_94
    iget-object v0, v10, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v0, v14, v15}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->stopUsing(J)V

    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v16

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-wide/from16 v23, v14

    move-wide/from16 v14, v19

    move-wide/from16 v19, v23

    goto/16 :goto_1e2

    :catchall_a9
    move-exception v0

    move-object/from16 v16, v6

    :goto_ac
    monitor-exit v16
    :try_end_ad
    .catchall {:try_start_8e .. :try_end_ad} :catchall_ae

    :try_start_ad
    throw v0
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ae} :catch_b0

    :catchall_ae
    move-exception v0

    goto :goto_ac

    :catch_b0
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-object v3, v11

    move-wide/from16 v23, v14

    move-wide/from16 v14, v19

    move-wide/from16 v19, v23

    goto/16 :goto_221

    :sswitch_c0
    move-wide/from16 v19, v4

    move-object v11, v6

    :try_start_c3
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c5} :catch_116

    move-wide/from16 v4, v19

    :try_start_c7
    invoke-virtual {v0, v4, v5, v7, v11}, Landroid/os/ProxyFileDescriptorCallback;->onWrite(JI[B)I

    move-result v6

    iget-object v2, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ce} :catch_109

    :try_start_ce
    iget-wide v0, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_d0
    .catchall {:try_start_ce .. :try_end_d0} :catchall_f5

    const-wide/16 v16, 0x0

    cmp-long v3, v0, v16

    if-eqz v3, :cond_e6

    move-wide/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-wide/from16 v2, v16

    move-wide/from16 v19, v14

    move-wide v14, v4

    move-wide v4, v8

    :try_start_e2
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replyWrite(JJI)V

    goto :goto_eb

    :cond_e6
    move-object/from16 v18, v2

    move-wide/from16 v19, v14

    move-wide v14, v4

    :goto_eb
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v18

    move/from16 v18, v7

    move-wide/from16 v21, v8

    goto/16 :goto_1e2

    :catchall_f5
    move-exception v0

    move-object/from16 v18, v2

    move-wide/from16 v19, v14

    move-wide v14, v4

    :goto_fb
    monitor-exit v18
    :try_end_fc
    .catchall {:try_start_e2 .. :try_end_fc} :catchall_107

    :try_start_fc
    throw v0
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_fd} :catch_fd

    :catch_fd
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-object v3, v11

    goto/16 :goto_221

    :catchall_107
    move-exception v0

    goto :goto_fb

    :catch_109
    move-exception v0

    move-wide/from16 v19, v14

    move-wide v14, v4

    move-object/from16 v2, p1

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-object v3, v11

    goto/16 :goto_221

    :catch_116
    move-exception v0

    move-wide/from16 v23, v14

    move-wide/from16 v14, v19

    move-wide/from16 v19, v23

    move-object/from16 v2, p1

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-object v3, v11

    goto/16 :goto_221

    :sswitch_126
    move-object v11, v6

    move-wide/from16 v19, v14

    move-wide v14, v4

    :try_start_12a
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0, v14, v15, v7, v11}, Landroid/os/ProxyFileDescriptorCallback;->onRead(JI[B)I

    move-result v6

    iget-object v4, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_133} :catch_164

    :try_start_133
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_135
    .catchall {:try_start_133 .. :try_end_135} :catchall_153

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_147

    move-object/from16 v1, p0

    move-object/from16 v16, v4

    move-wide v4, v8

    move/from16 v18, v7

    move-object v7, v11

    :try_start_143
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/FuseAppLoop;->native_replyRead(JJI[B)V

    goto :goto_14b

    :cond_147
    move-object/from16 v16, v4

    move/from16 v18, v7

    :goto_14b
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v16

    move-wide/from16 v21, v8

    goto/16 :goto_1e2

    :catchall_153
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v18, v7

    :goto_158
    monitor-exit v16
    :try_end_159
    .catchall {:try_start_143 .. :try_end_159} :catchall_162

    :try_start_159
    throw v0
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15a} :catch_15a

    :catch_15a
    move-exception v0

    move-object/from16 v2, p1

    move-wide/from16 v21, v8

    move-object v3, v11

    goto/16 :goto_221

    :catchall_162
    move-exception v0

    goto :goto_158

    :catch_164
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v2, p1

    move-wide/from16 v21, v8

    move-object v3, v11

    goto/16 :goto_221

    :sswitch_16e
    move-object v11, v6

    move/from16 v18, v7

    move-wide/from16 v19, v14

    move-wide v14, v4

    :try_start_174
    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v0
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_17a} :catch_1ae

    move-wide v6, v8

    move-wide v8, v0

    :try_start_17c
    iget-object v4, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_17f} :catch_1a6

    :try_start_17f
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_181
    .catchall {:try_start_17f .. :try_end_181} :catchall_19d

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_194

    move-object/from16 v1, p0

    move-object/from16 v16, v4

    move-wide v4, v6

    move-wide/from16 v21, v6

    move-wide/from16 v6, v19

    :try_start_190
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyGetAttr(JJJJ)V

    goto :goto_198

    :cond_194
    move-object/from16 v16, v4

    move-wide/from16 v21, v6

    :goto_198
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v16

    goto :goto_1e2

    :catchall_19d
    move-exception v0

    move-object/from16 v16, v4

    move-wide/from16 v21, v6

    :goto_1a2
    monitor-exit v16
    :try_end_1a3
    .catchall {:try_start_190 .. :try_end_1a3} :catchall_1a4

    :try_start_1a3
    throw v0

    :catchall_1a4
    move-exception v0

    goto :goto_1a2

    :catch_1a6
    move-exception v0

    move-wide/from16 v21, v6

    move-object/from16 v2, p1

    move-object v3, v11

    goto/16 :goto_221

    :catch_1ae
    move-exception v0

    move-wide/from16 v21, v8

    move-object/from16 v2, p1

    move-object v3, v11

    goto/16 :goto_221

    :sswitch_1b6
    move-object v11, v6

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-wide/from16 v19, v14

    move-wide v14, v4

    iget-object v0, v13, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v8

    iget-object v6, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1c7} :catch_1ef

    :try_start_1c7
    iget-wide v2, v10, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_1c9
    .catchall {:try_start_1c7 .. :try_end_1c9} :catchall_1e8

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1db

    move-object/from16 v1, p0

    move-wide/from16 v4, v21

    move-object/from16 v16, v6

    move-wide/from16 v6, v19

    :try_start_1d7
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyLookup(JJJJ)V

    goto :goto_1dd

    :cond_1db
    move-object/from16 v16, v6

    :goto_1dd
    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v16

    nop

    :goto_1e2
    move-object/from16 v2, p1

    move-object v3, v11

    move-wide/from16 v5, v21

    goto :goto_239

    :catchall_1e8
    move-exception v0

    move-object/from16 v16, v6

    :goto_1eb
    monitor-exit v16
    :try_end_1ec
    .catchall {:try_start_1d7 .. :try_end_1ec} :catchall_1ed

    :try_start_1ec
    throw v0
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_1ed} :catch_1ef

    :catchall_1ed
    move-exception v0

    goto :goto_1eb

    :catch_1ef
    move-exception v0

    move-object/from16 v2, p1

    move-object v3, v11

    goto :goto_221

    :goto_1f4
    :try_start_1f4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown FUSE command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_1ff} :catch_212

    move-object/from16 v2, p1

    move-object v3, v11

    :try_start_202
    iget v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_210} :catch_210

    :catch_210
    move-exception v0

    goto :goto_221

    :catch_212
    move-exception v0

    move-object/from16 v2, p1

    move-object v3, v11

    goto :goto_221

    :catch_217
    move-exception v0

    move-object v3, v6

    move/from16 v18, v7

    move-wide/from16 v21, v8

    move-object v2, v11

    move-wide/from16 v19, v14

    move-wide v14, v4

    :goto_221
    move-object v1, v0

    iget-object v4, v10, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_225
    const-string v0, "FuseAppLoop"

    const-string v5, ""

    invoke-static {v0, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v0
    :try_end_230
    .catchall {:try_start_225 .. :try_end_230} :catchall_23b

    move-wide/from16 v5, v21

    :try_start_232
    invoke-direct {v10, v5, v6, v0}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    invoke-direct {v10, v12}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    monitor-exit v4

    :goto_239
    const/4 v0, 0x1

    return v0

    :catchall_23b
    move-exception v0

    move-wide/from16 v5, v21

    :goto_23e
    monitor-exit v4
    :try_end_23f
    .catchall {:try_start_232 .. :try_end_23f} :catchall_240

    throw v0

    :catchall_240
    move-exception v0

    goto :goto_23e

    :sswitch_data_242
    .sparse-switch
        0x1 -> :sswitch_1b6
        0x3 -> :sswitch_16e
        0xf -> :sswitch_126
        0x10 -> :sswitch_c0
        0x12 -> :sswitch_74
        0x14 -> :sswitch_26
    .end sparse-switch
.end method

.method synthetic lambda$new$0$com-android-internal-os-FuseAppLoop()V
    .registers 4

    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/FuseAppLoop;->native_start(J)V

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/FuseAppLoop;->native_delete(J)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method native native_delete(J)V
.end method

.method native native_new(I)J
.end method

.method native native_replyGetAttr(JJJJ)V
.end method

.method native native_replyLookup(JJJJ)V
.end method

.method native native_replyOpen(JJJ)V
.end method

.method native native_replyRead(JJI[B)V
.end method

.method native native_replySimple(JJI)V
.end method

.method native native_replyWrite(JJI)V
.end method

.method native native_start(J)V
.end method

.method public registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const v2, 0x7ffffffd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_18

    move v1, v4

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    const-string v2, "Too many opened files."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_37

    move v3, v4

    :cond_37
    const-string v1, "Handler must be different from the current thread"

    invoke-static {v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6e

    :cond_44
    iget v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    move v2, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    if-gez v1, :cond_50

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    :cond_50
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_44

    nop

    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v3, p1, v4}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;-><init>(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return v2

    :cond_6e
    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v1

    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public unregisterCallback(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
