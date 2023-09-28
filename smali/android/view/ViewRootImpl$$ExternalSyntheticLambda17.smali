# classes3.dex

.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/ChoreographerInjectorStub$DynamicBufferInfoStub$SetFrameDroppedCallback;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda17;->f$0:Landroid/view/ViewRootImpl;

    return-void
.end method


# virtual methods
.method public final onSetFrameDroppedCallback(Landroid/graphics/HardwareRenderer$FrameDroppedCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda17;->f$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->lambda$updateBlastSurfaceIfNeeded$3$android-view-ViewRootImpl(Landroid/graphics/HardwareRenderer$FrameDroppedCallback;)V

    return-void
.end method
