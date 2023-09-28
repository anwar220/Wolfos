# classes3.dex

.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;->f$0:Landroid/view/ViewRootImpl;

    return-void
.end method


# virtual methods
.method public final onFrameDraw(J)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda4;->f$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->lambda$addHdrDimmerFramDrawingCallback$13$android-view-ViewRootImpl(J)V

    return-void
.end method
