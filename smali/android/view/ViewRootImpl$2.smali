# classes3.dex

.class Landroid/view/ViewRootImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;

.field final synthetic val$callback:Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 3

    iput-object p1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$2;->val$callback:Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->val$callback:Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/graphics/HardwareRenderer$FrameDrawingCallback;->onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "ViewRootImpl"

    const-string v2, "Exception while executing onFrameDraw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onFrameDraw(J)V
    .registers 3

    return-void
.end method
