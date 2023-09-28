# classes3.dex

.class public Landroid/view/InsetsSourceConsumer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsSourceConsumer$ShowResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InsetsSourceConsumer"


# instance fields
.field protected final mController:Landroid/view/InsetsController;

.field private mHasViewFocusWhenWindowFocusGain:Z

.field private mHasWindowFocus:Z

.field private mIsAnimationPending:Z

.field private mPendingFrame:Landroid/graphics/Rect;

.field private mPendingVisibleFrame:Landroid/graphics/Rect;

.field protected mRequestedVisible:Z

.field private mSourceControl:Landroid/view/InsetsSourceControl;

.field protected final mState:Landroid/view/InsetsState;

.field private final mTransactionSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field protected final mType:I


# direct methods
.method public constructor <init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InsetsState;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/view/InsetsController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    iput-object p2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iput-object p3, p0, Landroid/view/InsetsSourceConsumer;->mTransactionSupplier:Ljava/util/function/Supplier;

    iput-object p4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    return-void
.end method

.method private applyRequestedVisibilityToControl()V
    .registers 4

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_55

    :cond_b
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    :try_start_13
    iget-boolean v1, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2a

    :cond_21
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_2a
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-eqz v2, :cond_37

    const/high16 v2, 0x3f800000  # 1.0f

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_3e
    .catchall {:try_start_13 .. :try_end_3e} :catchall_49

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_43
    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    invoke-virtual {p0, v0}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    return-void

    :catchall_49
    move-exception v1

    if-eqz v0, :cond_54

    :try_start_4c
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    throw v1

    :cond_55
    :goto_55
    return-void
.end method

.method private updateCompatSysUiVisibility(ZLandroid/view/InsetsSource;Z)V
    .registers 9

    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v0}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    if-eq v0, v1, :cond_13

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    if-eq v0, v1, :cond_13

    return-void

    :cond_13
    if-eqz p1, :cond_18

    iget-boolean v1, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    goto :goto_55

    :cond_18
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    move v1, p3

    goto :goto_55

    :cond_26
    invoke-static {v0}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_30
    if-ltz v2, :cond_52

    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4f

    return-void

    :cond_4f
    add-int/lit8 v2, v2, -0x1

    goto :goto_30

    :cond_52
    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    move v1, v2

    :goto_55
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    iget v3, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v2, v3, v1, p1}, Landroid/view/InsetsController;->updateCompatSysUiVisibility(IZZ)V

    return-void
.end method


# virtual methods
.method applyLocalVisibilityOverride()Z
    .registers 10

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    goto :goto_15

    :cond_f
    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v1

    :goto_15
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    move v2, v4

    :goto_1e
    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    const/16 v6, 0x13

    if-ne v5, v6, :cond_38

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v5

    iget-object v6, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v6}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "InsetsSourceConsumer#applyLocalVisibilityOverride"

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_38
    invoke-direct {p0, v2, v0, v1}, Landroid/view/InsetsSourceConsumer;->updateCompatSysUiVisibility(ZLandroid/view/InsetsSource;Z)V

    if-nez v2, :cond_3e

    return v4

    :cond_3e
    iget-boolean v5, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-ne v1, v5, :cond_43

    return v4

    :cond_43
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    iget-boolean v5, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    invoke-virtual {v4, v5}, Landroid/view/InsetsSource;->setVisible(Z)V

    return v3
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v2}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v2, :cond_32

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsSourceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_32
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_3e

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_3e
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_4a

    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_4a
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getControl()Landroid/view/InsetsSourceControl;
    .registers 2

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    return-object v0
.end method

.method getType()I
    .registers 2

    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    return v0
.end method

.method hasViewFocusWhenWindowFocusGain()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    return v0
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/InsetsSourceConsumer;->setRequestedVisible(Z)V

    return-void
.end method

.method hide(ZI)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->hide()V

    return-void
.end method

.method public isRequestedVisible()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    return v0
.end method

.method protected isRequestedVisibleAwaitingControl()Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisible()Z

    move-result v0

    return v0
.end method

.method public notifyAnimationFinished()Z
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    const/4 v1, 0x1

    return v1

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method notifyHidden()V
    .registers 1

    return-void
.end method

.method public onPerceptible(Z)V
    .registers 2

    return-void
.end method

.method public onWindowFocusGained(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    iput-boolean p1, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    return-void
.end method

.method public onWindowFocusLost()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    return-void
.end method

.method public removeSurface()V
    .registers 1

    return-void
.end method

.method public requestShow(Z)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public setControl(Landroid/view/InsetsSourceControl;[I[I)Z
    .registers 13

    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_1a

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const-string v3, "InsetsSourceConsumer#setControl"

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_1a
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_33

    if-eq v0, p1, :cond_33

    new-instance v1, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    :cond_33
    return v2

    :cond_34
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    :cond_3c
    move-object v0, v1

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    nop

    const/4 v3, 0x1

    if-nez p1, :cond_71

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2, p0}, Landroid/view/InsetsController;->notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v4}, Landroid/view/InsetsController;->getLastDispatchedState()Landroid/view/InsetsState;

    move-result-object v4

    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v4

    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-eq v5, v4, :cond_6c

    invoke-virtual {v2, v4}, Landroid/view/InsetsSource;->setVisible(Z)V

    iget-object v5, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v5}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    :cond_6c
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    goto/16 :goto_db

    :cond_71
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v4

    sget-object v5, Landroid/view/InsetsSourceControl;->INVALID_HINTS:Landroid/graphics/Insets;

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v7, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v6, v7}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v6

    if-eq v4, v6, :cond_91

    if-nez v5, :cond_91

    move v6, v3

    goto :goto_92

    :cond_91
    move v6, v2

    :goto_92
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    if-eqz v7, :cond_be

    if-nez v6, :cond_9e

    iget-boolean v7, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    if-eqz v7, :cond_be

    :cond_9e
    if-eqz v4, :cond_ae

    aget v7, p2, v2

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-static {v8}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v8

    or-int/2addr v7, v8

    aput v7, p2, v2

    goto :goto_bb

    :cond_ae
    aget v7, p3, v2

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result v8

    invoke-static {v8}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v8

    or-int/2addr v7, v8

    aput v7, p3, v2

    :goto_bb
    iput-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    goto :goto_db

    :cond_be
    if-eqz v6, :cond_c2

    iput-boolean v3, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    :cond_c2
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v2

    if-eqz v2, :cond_cd

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    :cond_cd
    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->applyRequestedVisibilityToControl()V

    if-nez v4, :cond_db

    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    if-nez v2, :cond_db

    if-nez v1, :cond_db

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    :cond_db
    :goto_db
    if-eqz v1, :cond_e5

    new-instance v2, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    :cond_e5
    return v3
.end method

.method protected setRequestedVisible(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    if-eq v0, p1, :cond_2c

    iput-boolean p1, p0, Landroid/view/InsetsSourceConsumer;->mRequestedVisible:Z

    iget-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_24

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mIsAnimationPending:Z

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0, p0}, Landroid/view/InsetsController;->onRequestedVisibilityChanged(Landroid/view/InsetsSourceConsumer;)V

    :cond_2c
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    :cond_37
    return-void
.end method

.method public show(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/InsetsSourceConsumer;->setRequestedVisible(Z)V

    return-void
.end method

.method public updateSource(Landroid/view/InsetsSource;I)V
    .registers 7

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    const/4 v2, -0x1

    if-eq p2, v2, :cond_55

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_55

    :cond_1d
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, p1}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    move-object p1, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_3e

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_3f

    :cond_3e
    nop

    :goto_3f
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    return-void

    :cond_55
    :goto_55
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    return-void
.end method
