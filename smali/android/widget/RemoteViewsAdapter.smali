# classes4.dex

.class public Landroid/widget/RemoteViewsAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;,
        Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;,
        Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;,
        Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;,
        Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;,
        Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    }
.end annotation


# static fields
.field private static final CACHE_RESET_CONFIG_FLAGS:I = -0x3fffee00

.field private static final DEFAULT_CACHE_SIZE:I = 0x28

.field private static final DEFAULT_LOADING_VIEW_HEIGHT:I = 0x32

.field static final MSG_LOAD_NEXT_ITEM:I = 0x3

.field private static final MSG_MAIN_HANDLER_COMMIT_METADATA:I = 0x1

.field private static final MSG_MAIN_HANDLER_REMOTE_ADAPTER_CONNECTED:I = 0x3

.field private static final MSG_MAIN_HANDLER_REMOTE_ADAPTER_DISCONNECTED:I = 0x4

.field private static final MSG_MAIN_HANDLER_REMOTE_VIEWS_LOADED:I = 0x5

.field private static final MSG_MAIN_HANDLER_SUPER_NOTIFY_DATA_SET_CHANGED:I = 0x2

.field static final MSG_NOTIFY_DATA_SET_CHANGED:I = 0x2

.field static final MSG_REQUEST_BIND:I = 0x1

.field static final MSG_UNBIND_SERVICE:I = 0x4

.field private static final REMOTE_VIEWS_CACHE_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "RemoteViewsAdapter"

.field private static final UNBIND_SERVICE_DELAY:I = 0x1388

.field private static sCacheRemovalQueue:Landroid/os/Handler;

.field private static sCacheRemovalThread:Landroid/os/HandlerThread;

.field private static final sCachedRemoteViewsCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;",
            "Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppWidgetId:I

.field private final mAsyncViewLoadExecutor:Ljava/util/concurrent/Executor;

.field private final mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

.field private final mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

.field private final mContext:Landroid/content/Context;

.field private mDataReady:Z

.field private final mIntent:Landroid/content/Intent;

.field private mLastRemoteViewAppInfo:Landroid/content/pm/ApplicationInfo;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mOnLightBackground:Z

.field private mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

.field private final mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

.field private mVisibleWindowLowerBound:I

.field private mVisibleWindowUpperBound:I

.field private final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViewsAdapter;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoteViewsInteractionHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViews$InteractionHandler;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetVisibleWindow(Landroid/widget/RemoteViewsAdapter;I)[I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViewsAdapter;->getVisibleWindow(I)[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrequestBindService(Landroid/widget/RemoteViewsAdapter;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRemoteViews(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTemporaryMetaData(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViewsAdapter;->updateTemporaryMetaData(Lcom/android/internal/widget/IRemoteViewsFactory;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V
    .registers 11

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    if-eqz p2, :cond_df

    const-string/jumbo v1, "remoteAdapterAppWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    new-instance v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;-><init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet-IA;)V

    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    const-string/jumbo v2, "remoteAdapterOnLightBackground"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mOnLightBackground:Z

    const-string/jumbo v0, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string/jumbo v0, "remoteAdapterOnLightBackground"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "RemoteViewsCache-loader"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v4, p0, v5}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;-><init>(Landroid/os/Looper;Landroid/widget/RemoteViewsAdapter;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    if-eqz p4, :cond_60

    new-instance v3, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;

    invoke-direct {v3, v0}, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;-><init>(Landroid/os/HandlerThread;)V

    :cond_60
    iput-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mAsyncViewLoadExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    sget-object v0, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_81

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "RemoteViewsAdapter-cachePruner"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    :cond_81
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-direct {v0, v2, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;I)V

    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_8e
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    if-eqz v2, :cond_ca

    invoke-static {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmConfiguration(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    const v5, -0x3fffee00

    and-int/2addr v4, v5

    if-eqz v4, :cond_ad

    goto :goto_ca

    :cond_ad
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    iput-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v5

    monitor-enter v5
    :try_end_ba
    .catchall {:try_start_8e .. :try_end_ba} :catchall_dc

    :try_start_ba
    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v4

    iget v4, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    if-lez v4, :cond_c5

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    :cond_c5
    monitor-exit v5

    goto :goto_d3

    :catchall_c7
    move-exception v4

    monitor-exit v5
    :try_end_c9
    .catchall {:try_start_ba .. :try_end_c9} :catchall_c7

    :try_start_c9
    throw v4

    :cond_ca
    :goto_ca
    new-instance v4, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    const/16 v5, 0x28

    invoke-direct {v4, v5, v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;-><init>(ILandroid/content/res/Configuration;)V

    iput-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    :goto_d3
    iget-boolean v4, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    if-nez v4, :cond_da

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()V

    :cond_da
    monitor-exit v1

    return-void

    :catchall_dc
    move-exception v2

    monitor-exit v1
    :try_end_de
    .catchall {:try_start_c9 .. :try_end_de} :catchall_dc

    throw v2

    :cond_df
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-null Intent must be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getVisibleWindow(I)[I
    .registers 7

    iget v0, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    iget v1, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    if-nez v0, :cond_8

    if-eqz v1, :cond_41

    :cond_8
    if-ltz v0, :cond_41

    if-gez v1, :cond_d

    goto :goto_41

    :cond_d
    if-gt v0, v1, :cond_20

    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v2, v0

    new-array v2, v2, [I

    move v3, v0

    const/4 v4, 0x0

    :goto_16
    if-gt v3, v1, :cond_1f

    aput v3, v2, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_1f
    goto :goto_40

    :cond_20
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int v2, p1, v0

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2d
    if-gt v4, v1, :cond_36

    aput v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_36
    move v4, v0

    :goto_37
    if-ge v4, p1, :cond_40

    aput v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_40
    :goto_40
    return-object v2

    :cond_41
    :goto_41
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2
.end method

.method static synthetic lambda$saveRemoteViewsCache$0(Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V
    .registers 4

    sget-object v0, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private requestBindService()V
    .registers 6

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    iget v1, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updateRemoteViews(Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V
    .registers 16

    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-interface {p1, p2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getItemId(I)J

    move-result-wide v4
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_71
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_71

    if-eqz v0, :cond_69

    nop

    iget-object v1, v0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mLastRemoteViewAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1e

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mLastRemoteViewAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, v0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    goto :goto_22

    :cond_1e
    iget-object v1, v0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mLastRemoteViewAppInfo:Landroid/content/pm/ApplicationInfo;

    :cond_22
    :goto_22
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v7

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v8

    monitor-enter v8

    :try_start_2d
    invoke-virtual {v8, v7}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->isViewTypeInRange(I)Z

    move-result v1

    move v9, v1

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v1

    iget v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    move v10, v1

    monitor-exit v8
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_66

    iget-object v11, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v11

    if-eqz v9, :cond_5a

    :try_start_41
    invoke-direct {p0, v10}, Landroid/widget/RemoteViewsAdapter;->getVisibleWindow(I)[I

    move-result-object v6

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move v2, p2

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->insert(ILandroid/widget/RemoteViews;J[I)V

    if-eqz p3, :cond_59

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_59
    goto :goto_61

    :cond_5a
    const-string v1, "RemoteViewsAdapter"

    const-string v2, "Error: widget\'s RemoteViewsFactory returns more view types than  indicated by getViewTypeCount() "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_61
    monitor-exit v11

    return-void

    :catchall_63
    move-exception v1

    monitor-exit v11
    :try_end_65
    .catchall {:try_start_41 .. :try_end_65} :catchall_63

    throw v1

    :catchall_66
    move-exception v1

    :try_start_67
    monitor-exit v8
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v1

    :cond_69
    :try_start_69
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Null remoteViews"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_71} :catch_71
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_71} :catch_71

    :catch_71
    move-exception v0

    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in updateRemoteViews("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTemporaryMetaData(Lcom/android/internal/widget/IRemoteViewsFactory;)V
    .registers 10

    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->hasStableIds()Z

    move-result v0

    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewTypeCount()I

    move-result v1

    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getCount()I

    move-result v2

    new-instance v3, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    invoke-interface {p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    if-lez v2, :cond_30

    iget-object v4, v3, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->remoteViews:Landroid/widget/RemoteViews;

    if-nez v4, :cond_30

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_30

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;

    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-direct {v6, v7}, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;-><init>(Landroid/os/HandlerThread;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->loadFirstViewHeight(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    :cond_30
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v4

    monitor-enter v4
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_37} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_37} :catch_46

    :try_start_37
    iput-boolean v0, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    add-int/lit8 v5, v1, 0x1

    iput v5, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    iput v2, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    iput-object v3, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->loadingTemplate:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    monitor-exit v4

    goto :goto_83

    :catchall_43
    move-exception v5

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_43

    :try_start_45
    throw v5
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_46} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_46} :catch_46

    :catch_46
    move-exception v0

    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in updateMetaData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v1

    monitor-enter v1

    :try_start_6a
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_87

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    :try_start_77
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_84

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_83
    return-void

    :catchall_84
    move-exception v1

    :try_start_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v1

    :catchall_87
    move-exception v2

    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v2
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->unbindNow()V

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v1

    iget-wide v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    monitor-exit v0

    return-wide v1

    :cond_15
    const-wide/16 v1, 0x0

    monitor-exit v0

    return-wide v1

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getItemViewType(I)I
    .registers 5

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v1

    iget v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_27

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v2

    monitor-enter v2

    :try_start_1b
    invoke-virtual {v2, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I

    move-result v0

    monitor-exit v2

    return v0

    :catchall_21
    move-exception v0

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    const/4 v1, 0x0

    :try_start_25
    monitor-exit v0

    return v1

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public getRemoteViewsServiceIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsAt(I)Landroid/widget/RemoteViews;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    const/4 v4, 0x0

    if-eqz p2, :cond_1e

    instance-of v5, p2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v5, :cond_1e

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move-object v6, p2

    check-cast v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->removeView(Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    :cond_1e
    if-nez v3, :cond_24

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()V

    goto :goto_2b

    :cond_24
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v5, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queuePositionsToBePreloadedFromRequestedPosition(I)Z

    move-result v5

    move v4, v5

    :goto_2b
    instance-of v5, p2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v5, :cond_33

    move-object v5, p2

    check-cast v5, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    goto :goto_48

    :cond_33
    new-instance v5, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/content/Context;Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)V

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mAsyncViewLoadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v5, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->setExecutor(Ljava/util/concurrent/Executor;)V

    iget-boolean v6, p0, Landroid/widget/RemoteViewsAdapter;->mOnLightBackground:Z

    invoke-virtual {v5, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->setOnLightBackground(Z)V

    :goto_48
    const/4 v6, 0x3

    if-eqz v3, :cond_58

    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v5, v1, v7, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$InteractionHandler;Z)V

    if-eqz v4, :cond_7a

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    invoke-virtual {v2, v6}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_7a

    :cond_58
    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v7}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getLoadingTemplate(Landroid/content/Context;)Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    move-result-object v7

    iget-object v7, v7, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->remoteViews:Landroid/widget/RemoteViews;

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v5, v7, v8, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$InteractionHandler;Z)V

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    invoke-virtual {v2, p1, v5}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->add(ILandroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queueRequestedPositionToLoad(I)V

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    invoke-virtual {v2, v6}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessage(I)Z

    :cond_7a
    :goto_7a
    monitor-exit v0

    return-object v5

    :catchall_7c
    move-exception v1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method public getViewTypeCount()I
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_2e

    const/4 v0, 0x0

    return v0

    :pswitch_8  #0x5
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->notifyOnRemoteViewsLoaded(ILandroid/widget/RemoteViews;)V

    return v1

    :pswitch_14  #0x4
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->onRemoteAdapterDisconnected()V

    :cond_1b
    return v1

    :pswitch_1c  #0x3
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->onRemoteAdapterConnected()Z

    :cond_23
    return v1

    :pswitch_24  #0x2
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    return v1

    :pswitch_28  #0x1
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->commitTemporaryMetaData()V

    return v1

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_28  #00000001
        :pswitch_24  #00000002
        :pswitch_1c  #00000003
        :pswitch_14  #00000004
        :pswitch_8  #00000005
    .end packed-switch
.end method

.method public hasStableIds()Z
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-boolean v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isDataReady()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceHandler:Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public saveRemoteViewsCache()V
    .registers 9

    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget v2, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;I)V

    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_11
    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    sget-object v3, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v5}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v5

    monitor-enter v5
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_6a

    :try_start_30
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmMetaData(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    iget v6, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    move v3, v6

    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_67

    :try_start_3a
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v5
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_6a

    :try_start_3d
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-$$Nest$fgetmIndexRemoteViews(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v4, v6

    monitor-exit v5
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_64

    if-lez v3, :cond_52

    if-lez v4, :cond_52

    :try_start_4d
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    new-instance v5, Landroid/widget/RemoteViewsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Landroid/widget/RemoteViewsAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_4d .. :try_end_63} :catchall_6a

    return-void

    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_6a

    :catchall_67
    move-exception v2

    :try_start_68
    monitor-exit v5
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw v2

    :catchall_6a
    move-exception v2

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6a

    throw v2
.end method

.method public setRemoteViewsInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    return-void
.end method

.method public setVisibleRangeHint(II)V
    .registers 3

    iput p1, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    iput p2, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    return-void
.end method

.method superNotifyDataSetChanged()V
    .registers 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
