# classes3.dex

.class Landroid/service/dreams/DreamService$OverlayConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayConnection"
.end annotation


# instance fields
.field private mBound:Z

.field private mOverlay:Landroid/service/dreams/IDreamOverlay;

.field private final mRequests:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlay;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mRequests:Ljava/util/ArrayDeque;

    return-void
.end method

.method private evaluate()V
    .registers 3

    iget-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mOverlay:Landroid/service/dreams/IDreamOverlay;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :goto_5
    iget-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mOverlay:Landroid/service/dreams/IDreamOverlay;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_5

    :cond_1b
    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 8

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-static {p1, p3}, Landroid/service/dreams/DreamService;->-$$Nest$smfetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    nop

    invoke-static {p1, v0}, Landroid/service/dreams/DreamService;->-$$Nest$smfetchShouldShowComplications(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Z

    move-result v2

    const-string v3, "android.service.dreams.SHOW_COMPLICATIONS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v2, 0x4000001

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mBound:Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    invoke-static {p2}, Landroid/service/dreams/IDreamOverlay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamOverlay;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mOverlay:Landroid/service/dreams/IDreamOverlay;

    invoke-direct {p0}, Landroid/service/dreams/DreamService$OverlayConnection;->evaluate()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mOverlay:Landroid/service/dreams/IDreamOverlay;

    return-void
.end method

.method public request(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlay;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/service/dreams/DreamService$OverlayConnection;->evaluate()V

    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .registers 3

    iget-boolean v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mBound:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mBound:Z

    return-void
.end method
