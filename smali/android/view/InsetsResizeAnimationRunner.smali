# classes3.dex

.class public Landroid/view/InsetsResizeAnimationRunner;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/InsetsAnimationControlRunner;
.implements Landroid/view/InternalInsetsAnimationController;
.implements Landroid/view/WindowInsetsAnimationControlListener;


# instance fields
.field private final mAnimation:Landroid/view/WindowInsetsAnimation;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCancelled:Z

.field private final mController:Landroid/view/InsetsAnimationControlCallbacks;

.field private mFinished:Z

.field private final mFromState:Landroid/view/InsetsState;

.field private final mToState:Landroid/view/InsetsState;

.field private final mTypes:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmController(Landroid/view/InsetsResizeAnimationRunner;)Landroid/view/InsetsAnimationControlCallbacks;
    .registers 1

    iget-object p0, p0, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFinished(Landroid/view/InsetsResizeAnimationRunner;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/animation/Interpolator;JILandroid/view/InsetsAnimationControlCallbacks;)V
    .registers 27

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v8, v6, Landroid/view/InsetsResizeAnimationRunner;->mFromState:Landroid/view/InsetsState;

    iput-object v9, v6, Landroid/view/InsetsResizeAnimationRunner;->mToState:Landroid/view/InsetsState;

    iput v10, v6, Landroid/view/InsetsResizeAnimationRunner;->mTypes:I

    move-object/from16 v11, p8

    iput-object v11, v6, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    new-instance v4, Landroid/view/WindowInsetsAnimation;

    move-object/from16 v12, p4

    move-wide/from16 v13, p5

    invoke-direct {v4, v10, v12, v13, v14}, Landroid/view/WindowInsetsAnimation;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v4, v6, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {v4, v0}, Landroid/view/WindowInsetsAnimation;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {v8, v7, v10, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v15

    invoke-virtual {v9, v7, v10, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v5

    new-instance v3, Landroid/view/WindowInsetsAnimation$Bounds;

    invoke-static {v15, v5}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v15, v5}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Landroid/view/WindowInsetsAnimation$Bounds;-><init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V

    move-object/from16 v0, p8

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v16, v3

    move/from16 v3, p7

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    invoke-interface/range {v0 .. v5}, Landroid/view/InsetsAnimationControlCallbacks;->startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V

    return-void
.end method


# virtual methods
.method public applyChangeInsets(Landroid/view/InsetsState;)Z
    .registers 15

    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v0

    const/4 v1, 0x0

    :goto_d
    const/16 v2, 0x18

    if-ge v1, v2, :cond_74

    iget-object v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mFromState:Landroid/view/InsetsState;

    invoke-virtual {v2, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsResizeAnimationRunner;->mToState:Landroid/view/InsetsState;

    invoke-virtual {v3, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    if-eqz v2, :cond_71

    if-nez v3, :cond_22

    goto :goto_71

    :cond_22
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v4, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v0

    add-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v0

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/view/InsetsSource;

    invoke-direct {v7, v1}, Landroid/view/InsetsSource;-><init>(I)V

    invoke-virtual {v7, v6}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/InsetsSource;->setVisible(Z)V

    invoke-virtual {p1, v7}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_71
    :goto_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_74
    iget-boolean v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    if-eqz v1, :cond_7e

    iget-object v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Landroid/view/InsetsAnimationControlCallbacks;->notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V

    :cond_7e
    iget-boolean v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    return v1
.end method

.method public cancel()V
    .registers 2

    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    if-eqz v0, :cond_9

    goto :goto_14

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_13
    return-void

    :cond_14
    :goto_14
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-boolean v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10900000003L

    const-string/jumbo v4, "null"

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10900000004L

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v2}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v2

    const-wide v3, 0x10200000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v2, 0x10800000006L

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10200000007L

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v2, 0x10200000008L

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public finish(Z)V
    .registers 2

    return-void
.end method

.method public getAnimation()Landroid/view/WindowInsetsAnimation;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    return-object v0
.end method

.method public getAnimationType()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getControllingTypes()I
    .registers 2

    iget v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mTypes:I

    return v0
.end method

.method public getCurrentAlpha()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFraction()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentInsets()Landroid/graphics/Insets;
    .registers 2

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getHiddenStateInsets()Landroid/graphics/Insets;
    .registers 2

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getShownStateInsets()Landroid/graphics/Insets;
    .registers 2

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getTypes()I
    .registers 2

    iget v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mTypes:I

    return v0
.end method

.method public hasZeroInsetsIme()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isCancelled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    return v0
.end method

.method public isFinished()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$onReady$0$android-view-InsetsResizeAnimationRunner(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    invoke-interface {v0, p0}, Landroid/view/InsetsAnimationControlCallbacks;->scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V

    return-void
.end method

.method public notifyControlRevoked(I)V
    .registers 2

    return-void
.end method

.method public onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .registers 2

    return-void
.end method

.method public onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .registers 2

    return-void
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .registers 6

    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_34

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v1}, Landroid/view/WindowInsetsAnimation;->getDurationMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/InsetsResizeAnimationRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/InsetsResizeAnimationRunner$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsResizeAnimationRunner;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/InsetsResizeAnimationRunner$1;

    invoke-direct {v1, p0}, Landroid/view/InsetsResizeAnimationRunner$1;-><init>(Landroid/view/InsetsResizeAnimationRunner;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_34
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public setInsetsAndAlpha(Landroid/graphics/Insets;FF)V
    .registers 4

    return-void
.end method

.method public setReadyDispatched(Z)V
    .registers 2

    return-void
.end method

.method public updateSurfacePosition(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
