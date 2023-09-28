# classes4.dex

.class public abstract Landroid/widget/RemoteViewsService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;,
        Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViewsService"

.field private static final sLock:Ljava/lang/Object;

.field private static final sRemoteViewFactories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Intent$FilterComparison;",
            "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetsLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsRemoteViewFactories()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 8

    sget-object v0, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsService;->onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    move-result-object v5

    move-object v2, v5

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onCreate()V

    const/4 v3, 0x0

    goto :goto_27

    :cond_1f
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    move-object v2, v4

    const/4 v3, 0x1

    :goto_27
    new-instance v4, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;

    invoke-direct {v4, v2, v3}, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;-><init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;Z)V

    monitor-exit v0

    return-object v4

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public abstract onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.end method
