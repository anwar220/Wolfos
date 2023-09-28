# classes3.dex

.class Landroid/service/media/MediaBrowserService$ConnectionRecord;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionRecord"
.end annotation


# instance fields
.field public final callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field public final pid:I

.field public final pkg:Ljava/lang/String;

.field public final root:Landroid/service/media/MediaBrowserService$BrowserRoot;

.field public final rootHints:Landroid/os/Bundle;

.field public final service:Landroid/service/media/MediaBrowserService;

.field public final subscriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Landroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final uid:I


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService$BrowserRoot;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->service:Landroid/service/media/MediaBrowserService;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    iput p3, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pid:I

    iput p4, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->uid:I

    iput-object p5, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    iput-object p6, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p7, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->service:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmHandler(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/media/MediaBrowserService$ConnectionRecord$1;

    invoke-direct {v1, p0}, Landroid/service/media/MediaBrowserService$ConnectionRecord$1;-><init>(Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
