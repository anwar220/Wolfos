# classes3.dex

.class public final synthetic Landroid/view/ThreadedRenderer$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameCommitCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ThreadedRenderer$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onFrameCommit(Z)V
    .registers 3

    iget-object v0, p0, Landroid/view/ThreadedRenderer$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Landroid/view/ThreadedRenderer$1;->lambda$onFrameDraw$0(Ljava/util/ArrayList;Z)V

    return-void
.end method
