# classes3.dex

.class public abstract Landroid/service/contentcapture/ContentCaptureService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;,
        Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.contentcapture.ContentCaptureService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.content_capture"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

.field private mCallerMismatchTimeout:J

.field private final mClientInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

.field private final mDataShareAdapterResourceManager:Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

.field private mHandler:Landroid/os/Handler;

.field private mLastCallerMismatchLog:J

.field private final mServerInterface:Landroid/service/contentcapture/IContentCaptureService;

.field private final mSessionUids:Landroid/util/SparseIntArray;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDataShareAdapterResourceManager(Landroid/service/contentcapture/ContentCaptureService;)Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;
    .registers 1

    iget-object p0, p0, Landroid/service/contentcapture/ContentCaptureService;->mDataShareAdapterResourceManager:Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/service/contentcapture/ContentCaptureService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/contentcapture/ContentCaptureService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleFinishSession(Landroid/service/contentcapture/ContentCaptureService;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleFinishSession(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnActivityEvent(Landroid/service/contentcapture/ContentCaptureService;Landroid/service/contentcapture/ActivityEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleOnActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnActivitySnapshot(Landroid/service/contentcapture/ContentCaptureService;ILandroid/service/contentcapture/SnapshotData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->handleOnActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnConnected(Landroid/service/contentcapture/ContentCaptureService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleOnConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnCreateSession(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/service/contentcapture/ContentCaptureService;->handleOnCreateSession(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnDataRemovalRequest(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->handleOnDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnDataShared(Landroid/service/contentcapture/ContentCaptureService;Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/contentcapture/ContentCaptureService;->handleOnDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnDisconnected(Landroid/service/contentcapture/ContentCaptureService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/contentcapture/ContentCaptureService;->handleOnDisconnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendEvents(Landroid/service/contentcapture/ContentCaptureService;ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/contentcapture/ContentCaptureService;->handleSendEvents(ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/service/contentcapture/ContentCaptureService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;-><init>(Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager-IA;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mDataShareAdapterResourceManager:Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallerMismatchTimeout:J

    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$1;

    invoke-direct {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$1;-><init>(Landroid/service/contentcapture/ContentCaptureService;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mServerInterface:Landroid/service/contentcapture/IContentCaptureService;

    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$2;

    invoke-direct {v0, p0}, Landroid/service/contentcapture/ContentCaptureService$2;-><init>(Landroid/service/contentcapture/ContentCaptureService;)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mClientInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    return-void
.end method

.method private handleFinishSession(I)V
    .registers 3

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/service/contentcapture/ContentCaptureService;->onDestroyContentCaptureSession(Landroid/view/contentcapture/ContentCaptureSessionId;)V

    return-void
.end method

.method private handleIsRightCallerFor(Landroid/view/contentcapture/ContentCaptureEvent;I)Z
    .registers 12

    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_aa

    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v0

    goto :goto_11

    :pswitch_c  #0xfffffffe, 0xffffffff
    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureEvent;->getParentSessionId()I

    move-result v0

    nop

    :goto_11
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_4d

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_4c

    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIsRightCallerFor("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): no session for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    return v2

    :cond_4d
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_a8

    sget-object v3, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid call from UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " belongs to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/service/contentcapture/ContentCaptureService;->mLastCallerMismatchLog:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallerMismatchTimeout:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_a7

    const/16 v5, 0xce

    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;)V

    iput-wide v3, p0, Landroid/service/contentcapture/ContentCaptureService;->mLastCallerMismatchLog:J

    :cond_a7
    return v2

    :cond_a8
    const/4 v2, 0x1

    return v2

    :pswitch_data_aa
    .packed-switch -0x2
        :pswitch_c  #fffffffe
        :pswitch_c  #ffffffff
    .end packed-switch
.end method

.method private handleOnActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    return-void
.end method

.method private handleOnActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V
    .registers 4

    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v0, p1}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Landroid/service/contentcapture/ContentCaptureService;->onActivitySnapshot(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/service/contentcapture/SnapshotData;)V

    return-void
.end method

.method private handleOnConnected(Landroid/os/IBinder;)V
    .registers 3

    invoke-static {p1}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureServiceCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->onConnected()V

    return-void
.end method

.method private handleOnCreateSession(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .registers 9

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v0, p2}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/service/contentcapture/ContentCaptureService;->onCreateContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;Landroid/view/contentcapture/ContentCaptureSessionId;)V

    invoke-virtual {p1}, Landroid/view/contentcapture/ContentCaptureContext;->getFlags()I

    move-result v0

    const/4 v1, 0x0

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_18

    or-int/lit8 v1, v1, 0x20

    :cond_18
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1e

    or-int/lit8 v1, v1, 0x40

    :cond_1e
    if-nez v1, :cond_22

    move v1, p5

    goto :goto_24

    :cond_22
    or-int/lit8 v1, v1, 0x4

    :goto_24
    iget-object v2, p0, Landroid/service/contentcapture/ContentCaptureService;->mClientInterface:Landroid/view/contentcapture/IContentCaptureDirectManager;

    invoke-interface {v2}, Landroid/view/contentcapture/IContentCaptureDirectManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p4, v1, v2}, Landroid/service/contentcapture/ContentCaptureService;->setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V

    return-void
.end method

.method private handleOnDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/contentcapture/ContentCaptureService;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    return-void
.end method

.method private handleOnDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
    .registers 4

    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$3;

    invoke-direct {v0, p0, p2}, Landroid/service/contentcapture/ContentCaptureService$3;-><init>(Landroid/service/contentcapture/ContentCaptureService;Landroid/service/contentcapture/IDataShareCallback;)V

    invoke-virtual {p0, p1, v0}, Landroid/service/contentcapture/ContentCaptureService;->onDataShareRequest(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/DataShareCallback;)V

    return-void
.end method

.method private handleOnDisconnected()V
    .registers 2

    invoke-virtual {p0}, Landroid/service/contentcapture/ContentCaptureService;->onDisconnected()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    return-void
.end method

.method private handleSendEvents(ILandroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/view/contentcapture/ContentCaptureEvent;",
            ">;I",
            "Landroid/content/ContentCaptureOptions;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string v1, "handleSendEvents() received empty list of events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    new-instance v0, Landroid/service/contentcapture/FlushMetrics;

    invoke-direct {v0}, Landroid/service/contentcapture/FlushMetrics;-><init>()V

    move-object v9, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v10, v0

    move v11, v1

    move-object v12, v2

    move v13, v3

    :goto_24
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_b5

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/view/contentcapture/ContentCaptureEvent;

    invoke-direct {v6, v14, v7}, Landroid/service/contentcapture/ContentCaptureService;->handleIsRightCallerFor(Landroid/view/contentcapture/ContentCaptureEvent;I)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_b1

    :cond_39
    invoke-virtual {v14}, Landroid/view/contentcapture/ContentCaptureEvent;->getSessionId()I

    move-result v15

    if-eq v15, v11, :cond_57

    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    invoke-direct {v0, v15}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    move-object v12, v0

    move v1, v15

    if-eqz v13, :cond_56

    move-object/from16 v0, p0

    move-object v2, v10

    move-object v3, v9

    move-object/from16 v4, p4

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/service/contentcapture/ContentCaptureService;->writeFlushMetrics(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V

    invoke-virtual {v9}, Landroid/service/contentcapture/FlushMetrics;->reset()V

    :cond_56
    move v11, v1

    :cond_57
    invoke-virtual {v14}, Landroid/view/contentcapture/ContentCaptureEvent;->getContentCaptureContext()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object v0

    if-nez v10, :cond_63

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureContext;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v10

    :cond_63
    invoke-virtual {v14}, Landroid/view/contentcapture/ContentCaptureEvent;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_c2

    :pswitch_6a  #0x0
    invoke-virtual {v6, v12, v14}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    goto :goto_b1

    :pswitch_6e  #0x3
    invoke-virtual {v6, v12, v14}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    iget v1, v9, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/service/contentcapture/FlushMetrics;->viewTextChangedCount:I

    goto :goto_b1

    :pswitch_78  #0x2
    invoke-virtual {v6, v12, v14}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    iget v1, v9, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/service/contentcapture/FlushMetrics;->viewDisappearedCount:I

    goto :goto_b1

    :pswitch_82  #0x1
    invoke-virtual {v6, v12, v14}, Landroid/service/contentcapture/ContentCaptureService;->onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V

    iget v1, v9, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/service/contentcapture/FlushMetrics;->viewAppearedCount:I

    goto :goto_b1

    :pswitch_8c  #0xffffffff
    invoke-virtual {v14}, Landroid/view/contentcapture/ContentCaptureEvent;->getParentSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/contentcapture/ContentCaptureContext;->setParentSessionId(I)V

    iget-object v1, v6, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v15, v7}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v6, v0, v12}, Landroid/service/contentcapture/ContentCaptureService;->onCreateContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;Landroid/view/contentcapture/ContentCaptureSessionId;)V

    iget v1, v9, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/service/contentcapture/FlushMetrics;->sessionStarted:I

    goto :goto_b1

    :pswitch_a2  #0xfffffffe
    iget-object v1, v6, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseIntArray;->delete(I)V

    invoke-virtual {v6, v12}, Landroid/service/contentcapture/ContentCaptureService;->onDestroyContentCaptureSession(Landroid/view/contentcapture/ContentCaptureSessionId;)V

    iget v1, v9, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/service/contentcapture/FlushMetrics;->sessionFinished:I

    nop

    :goto_b1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_24

    :cond_b5
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v10

    move-object v3, v9

    move-object/from16 v4, p4

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/service/contentcapture/ContentCaptureService;->writeFlushMetrics(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V

    return-void

    :pswitch_data_c2
    .packed-switch -0x2
        :pswitch_a2  #fffffffe
        :pswitch_8c  #ffffffff
        :pswitch_6a  #00000000
        :pswitch_82  #00000001
        :pswitch_78  #00000002
        :pswitch_6e  #00000003
    .end packed-switch
.end method

.method public static setClientState(Lcom/android/internal/os/IResultReceiver;ILandroid/os/IBinder;)V
    .registers 7

    if-eqz p2, :cond_f

    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "binder"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_10

    :catch_d
    move-exception v0

    goto :goto_14

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-interface {p0, p1, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_d

    goto :goto_2c

    :goto_14
    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error async reporting result to client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return-void
.end method

.method private writeFlushMetrics(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    .registers 12

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    if-nez v0, :cond_d

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writeSessionFlush(): no server callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    :try_start_12
    invoke-interface/range {v0 .. v5}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->writeSessionFlush(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_2f

    :catch_16
    move-exception v0

    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to write flush metrics: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method


# virtual methods
.method public final disableSelf()V
    .registers 4

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string v1, "disableSelf()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    if-nez v0, :cond_17

    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string v2, "disableSelf(): no server callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    :try_start_17
    invoke-interface {v0}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->disableSelf()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1f
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    const-string v0, "Debug: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " Verbose: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const-string v1, "Number sessions: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    if-lez v0, :cond_48

    const-string v1, "  "

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v0, :cond_48

    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": uid="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/service/contentcapture/ContentCaptureService;->mSessionUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_48
    return-void
.end method

.method public onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V
    .registers 5

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityEvent(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public onActivitySnapshot(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/service/contentcapture/SnapshotData;)V
    .registers 6

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_23

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivitySnapshot(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.contentcapture.ContentCaptureService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mServerInterface:Landroid/service/contentcapture/IContentCaptureService;

    invoke-interface {v0}, Landroid/service/contentcapture/IContentCaptureService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_13
    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to bind to wrong intent (should be android.service.contentcapture.ContentCaptureService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConnected()V
    .registers 4

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bound to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onContentCaptureEvent(Landroid/view/contentcapture/ContentCaptureSessionId;Landroid/view/contentcapture/ContentCaptureEvent;)V
    .registers 6

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_23

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onContentCaptureEventsRequest(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateContentCaptureSession(Landroid/view/contentcapture/ContentCaptureContext;Landroid/view/contentcapture/ContentCaptureSessionId;)V
    .registers 6

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_2d

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateContentCaptureSession(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ctx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void
.end method

.method public onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 4

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_c

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataRemovalRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public onDataShareRequest(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/DataShareCallback;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_c

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataShareRequest()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public onDestroyContentCaptureSession(Landroid/view/contentcapture/ContentCaptureSessionId;)V
    .registers 5

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_23

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroyContentCaptureSession(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method public onDisconnected()V
    .registers 4

    sget-object v0, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbinding from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setContentCaptureConditions(Ljava/lang/String;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    if-nez v0, :cond_d

    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setContentCaptureConditions(): no server callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    :try_start_d
    invoke-static {p2}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->setContentCaptureConditions(Ljava/lang/String;Ljava/util/List;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_19
    return-void
.end method

.method public final setContentCaptureWhitelist(Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService;->mCallback:Landroid/service/contentcapture/IContentCaptureServiceCallback;

    if-nez v0, :cond_d

    sget-object v1, Landroid/service/contentcapture/ContentCaptureService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setContentCaptureWhitelist(): no server callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2}, Landroid/view/contentcapture/ContentCaptureHelper;->toList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/service/contentcapture/IContentCaptureServiceCallback;->setContentCaptureWhitelist(Ljava/util/List;Ljava/util/List;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1d
    return-void
.end method
