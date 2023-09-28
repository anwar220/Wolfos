# classes3.dex

.class public Landroid/view/InsetsAnimationThreadControlRunner;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/InsetsAnimationControlRunner;


# static fields
.field private static final TAG:Ljava/lang/String; = "InsetsAnimThreadRunner"


# instance fields
.field private final mCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

.field private final mControl:Landroid/view/InsetsAnimationControlImpl;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mOuterCallbacks:Landroid/view/InsetsAnimationControlCallbacks;


# direct methods
.method static bridge synthetic -$$Nest$fgetmControl(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlImpl;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainThreadHandler(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOuterCallbacks(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlCallbacks;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mOuterCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreleaseControls(Landroid/view/InsetsAnimationThreadControlRunner;Landroid/util/SparseArray;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/InsetsAnimationThreadControlRunner;->releaseControls(Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/os/Handler;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/view/InsetsState;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/InsetsAnimationControlCallbacks;",
            "J",
            "Landroid/view/animation/Interpolator;",
            "II",
            "Landroid/content/res/CompatibilityInfo$Translator;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Landroid/view/InsetsAnimationThreadControlRunner$1;

    invoke-direct {v7, v0}, Landroid/view/InsetsAnimationThreadControlRunner$1;-><init>(Landroid/view/InsetsAnimationThreadControlRunner;)V

    iput-object v7, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

    move-object/from16 v14, p13

    iput-object v14, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mMainThreadHandler:Landroid/os/Handler;

    move-object/from16 v15, p6

    iput-object v15, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mOuterCallbacks:Landroid/view/InsetsAnimationControlCallbacks;

    new-instance v13, Landroid/view/InsetsAnimationControlImpl;

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object v14, v13

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Landroid/view/InsetsAnimationControlImpl;-><init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;)V

    iput-object v14, v0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-static {}, Landroid/view/InsetsAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v2, v0, v4, v3}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda2;-><init>(Landroid/view/InsetsAnimationThreadControlRunner;ILandroid/view/WindowInsetsAnimationControlListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private releaseControls(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_19

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    new-instance v2, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_19
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    invoke-static {}, Landroid/view/InsetsAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda1;-><init>(Landroid/view/InsetsAnimationControlImpl;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/InsetsAnimationControlImpl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method public getAnimation()Landroid/view/WindowInsetsAnimation;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getAnimation()Landroid/view/WindowInsetsAnimation;

    move-result-object v0

    return-object v0
.end method

.method public getAnimationType()I
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getAnimationType()I

    move-result v0

    return v0
.end method

.method public getControllingTypes()I
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getControllingTypes()I

    move-result v0

    return v0
.end method

.method public getTypes()I
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->getTypes()I

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$android-view-InsetsAnimationThreadControlRunner(ILandroid/view/WindowInsetsAnimationControlListener;)V
    .registers 7

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const-wide/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InsetsAsyncAnimation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-interface {p2, v0, p1}, Landroid/view/WindowInsetsAnimationControlListener;->onReady(Landroid/view/WindowInsetsAnimationController;I)V

    return-void
.end method

.method public notifyControlRevoked(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0, p1}, Landroid/view/InsetsAnimationControlImpl;->notifyControlRevoked(I)V

    return-void
.end method

.method public updateSurfacePosition(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner;->mControl:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v1, p1}, Landroid/view/InsetsAnimationControlImpl;->updateSurfacePosition(Landroid/util/SparseArray;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
