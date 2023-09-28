# classes3.dex

.class public abstract Landroid/service/search/SearchUiService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/search/SearchUiService$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.search.SearchUiService"

.field private static final TAG:Ljava/lang/String; = "SearchUiService"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mInterface:Landroid/service/search/ISearchUiService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/search/SearchUiService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoDestroy(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/search/SearchUiService;->doDestroy(Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/search/SearchUiService$1;

    invoke-direct {v0, p0}, Landroid/service/search/SearchUiService$1;-><init>(Landroid/service/search/SearchUiService;)V

    iput-object v0, p0, Landroid/service/search/SearchUiService;->mInterface:Landroid/service/search/ISearchUiService;

    return-void
.end method

.method private doDestroy(Landroid/app/search/SearchSessionId;)V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0, p1}, Landroid/service/search/SearchUiService;->onDestroy(Landroid/app/search/SearchSessionId;)V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.search.SearchUiService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/service/search/SearchUiService;->mInterface:Landroid/service/search/ISearchUiService;

    invoke-interface {v0}, Landroid/service/search/ISearchUiService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.search.SearchUiService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchUiService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
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

    iput-object v0, p0, Landroid/service/search/SearchUiService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract onDestroy(Landroid/app/search/SearchSessionId;)V
.end method

.method public abstract onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
.end method

.method public abstract onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/search/SearchSessionId;",
            "Landroid/app/search/Query;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/search/SearchTarget;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public onSearchSessionCreated(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V
    .registers 3

    return-void
.end method
