# classes2.dex

.class public final Landroid/media/tv/interactive/TvInteractiveAppManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$Session;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$TeletextAppState;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$ErrorCode;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$InteractiveAppState;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$ServiceState;
    }
.end annotation


# static fields
.field public static final ACTION_APP_LINK_COMMAND:Ljava/lang/String; = "android.media.tv.interactive.action.APP_LINK_COMMAND"

.field public static final APP_LINK_KEY_BACK_URI:Ljava/lang/String; = "back_uri"

.field public static final APP_LINK_KEY_CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final APP_LINK_KEY_COMMAND_TYPE:Ljava/lang/String; = "command_type"

.field public static final APP_LINK_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final APP_LINK_KEY_SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final ERROR_BLOCKED:I = 0x5

.field public static final ERROR_ENCRYPTED:I = 0x6

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_SUPPORTED:I = 0x2

.field public static final ERROR_RESOURCE_UNAVAILABLE:I = 0x4

.field public static final ERROR_UNKNOWN:I = 0x1

.field public static final ERROR_UNKNOWN_CHANNEL:I = 0x7

.field public static final ERROR_WEAK_SIGNAL:I = 0x3

.field public static final INTENT_KEY_BI_INTERACTIVE_APP_TYPE:Ljava/lang/String; = "bi_interactive_app_type"

.field public static final INTENT_KEY_BI_INTERACTIVE_APP_URI:Ljava/lang/String; = "bi_interactive_app_uri"

.field public static final INTENT_KEY_CHANNEL_URI:Ljava/lang/String; = "channel_uri"

.field public static final INTENT_KEY_COMMAND_TYPE:Ljava/lang/String; = "command_type"

.field public static final INTENT_KEY_INTERACTIVE_APP_SERVICE_ID:Ljava/lang/String; = "interactive_app_id"

.field public static final INTENT_KEY_TV_INPUT_ID:Ljava/lang/String; = "tv_input_id"

.field public static final INTERACTIVE_APP_STATE_ERROR:I = 0x3

.field public static final INTERACTIVE_APP_STATE_RUNNING:I = 0x2

.field public static final INTERACTIVE_APP_STATE_STOPPED:I = 0x1

.field public static final SERVICE_STATE_ERROR:I = 0x4

.field public static final SERVICE_STATE_PREPARING:I = 0x2

.field public static final SERVICE_STATE_READY:I = 0x3

.field public static final SERVICE_STATE_UNREALIZED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TvInteractiveAppManager"

.field public static final TELETEXT_APP_STATE_ERROR:I = 0x3

.field public static final TELETEXT_APP_STATE_HIDE:I = 0x2

.field public static final TELETEXT_APP_STATE_SHOW:I = 0x1


# instance fields
.field private final mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

.field private final mLock:Ljava/lang/Object;

.field private mNextSeq:I

.field private final mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

.field private final mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbackRecords(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/media/tv/interactive/ITvInteractiveAppManager;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Landroid/media/tv/interactive/TvInteractiveAppManager;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    return p0
.end method

.method public constructor <init>(Landroid/media/tv/interactive/ITvInteractiveAppManager;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iput p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager;)V

    if-eqz p1, :cond_34

    :try_start_2a
    invoke-interface {p1, v0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_34
    :goto_34
    nop

    return-void
.end method

.method private createSessionInternal(Ljava/lang/String;ILandroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V
    .registers 15

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    invoke-direct {v0, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_11
    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mNextSeq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mNextSeq:I

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_31

    :try_start_1c
    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    iget v9, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    move-object v6, p1

    move v7, p2

    move v8, v2

    invoke-interface/range {v4 .. v9}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->createSession(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;III)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_28} :catch_2b
    .catchall {:try_start_1c .. :try_end_28} :catchall_31

    nop

    :try_start_29
    monitor-exit v1

    return-void

    :catch_2b
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :catchall_31
    move-exception v2

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    throw v2
.end method


# virtual methods
.method public createSession(Ljava/lang/String;ILandroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager;->createSessionInternal(Ljava/lang/String;ILandroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public getTvInteractiveAppServiceList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->getTvInteractiveAppServiceList(I)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->registerAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;)V
    .registers 6

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    invoke-direct {v2, p2, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->unregisterAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;)V
    .registers 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->getCallback()Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

    move-result-object v3

    if-ne v3, p1, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_23

    :cond_22
    goto :goto_c

    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1
.end method
