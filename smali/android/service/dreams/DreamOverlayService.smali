# classes3.dex

.class public abstract Landroid/service/dreams/DreamOverlayService;
.super Landroid/app/Service;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DreamOverlayService"


# instance fields
.field private mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

.field mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

.field private mShowComplications:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/dreams/DreamOverlayService$1;

    invoke-direct {v0, p0}, Landroid/service/dreams/DreamOverlayService$1;-><init>(Landroid/service/dreams/DreamOverlayService;)V

    iput-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    const-string v0, "android.service.dreams.SHOW_COMPLICATIONS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/dreams/DreamOverlayService;->mShowComplications:Z

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlay:Landroid/service/dreams/IDreamOverlay;

    invoke-interface {v0}, Landroid/service/dreams/IDreamOverlay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onStartDream(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public final requestExit()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    invoke-interface {v0}, Landroid/service/dreams/IDreamOverlayCallback;->onExitRequested()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1f

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not request exit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DreamOverlayService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method public final shouldShowComplications()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/dreams/DreamOverlayService;->mShowComplications:Z

    return v0
.end method
