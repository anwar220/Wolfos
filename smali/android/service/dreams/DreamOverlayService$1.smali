# classes3.dex

.class Landroid/service/dreams/DreamOverlayService$1;
.super Landroid/service/dreams/IDreamOverlay$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/dreams/DreamOverlayService;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamOverlayService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/dreams/DreamOverlayService$1;->this$0:Landroid/service/dreams/DreamOverlayService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamOverlay$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startDream(Landroid/view/WindowManager$LayoutParams;Landroid/service/dreams/IDreamOverlayCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$1;->this$0:Landroid/service/dreams/DreamOverlayService;

    iput-object p2, v0, Landroid/service/dreams/DreamOverlayService;->mDreamOverlayCallback:Landroid/service/dreams/IDreamOverlayCallback;

    iget-object v0, p0, Landroid/service/dreams/DreamOverlayService$1;->this$0:Landroid/service/dreams/DreamOverlayService;

    invoke-virtual {v0, p1}, Landroid/service/dreams/DreamOverlayService;->onStartDream(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
