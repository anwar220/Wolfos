# classes2.dex

.class Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppService$Session;->layoutSurface(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;IIII)V
    .registers 6

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iput p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;->val$left:I

    iput p3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;->val$top:I

    iput p4, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;->val$right:I

    iput p5, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;->val$left:I

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;->val$top:I

    iget v3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;->val$right:I

    iget v4, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;->val$bottom:I

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;->onLayoutSurface(IIII)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    :cond_19
    goto :goto_22

    :catch_1a
    move-exception v0

    const-string v1, "TvInteractiveAppService"

    const-string v2, "error in layoutSurface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method
