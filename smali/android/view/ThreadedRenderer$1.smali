# classes3.dex

.class Landroid/view/ThreadedRenderer$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ThreadedRenderer;

.field final synthetic val$frameCallbacks:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/view/ThreadedRenderer;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Landroid/view/ThreadedRenderer$1;->this$0:Landroid/view/ThreadedRenderer;

    iput-object p2, p0, Landroid/view/ThreadedRenderer$1;->val$frameCallbacks:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onFrameDraw$0(Ljava/util/ArrayList;Z)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/HardwareRenderer$FrameCommitCallback;

    invoke-interface {v1, p1}, Landroid/graphics/HardwareRenderer$FrameCommitCallback;->onFrameCommit(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method


# virtual methods
.method public onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Landroid/view/ThreadedRenderer$1;->val$frameCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    iget-object v2, p0, Landroid/view/ThreadedRenderer$1;->val$frameCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/HardwareRenderer$FrameDrawingCallback;

    invoke-interface {v2, p1, p2, p3}, Landroid/graphics/HardwareRenderer$FrameDrawingCallback;->onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    return-object v1

    :cond_2a
    new-instance v1, Landroid/view/ThreadedRenderer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroid/view/ThreadedRenderer$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public onFrameDraw(J)V
    .registers 3

    return-void
.end method
