# classes3.dex

.class public interface abstract Landroid/view/AttachedSurfaceControl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;
    }
.end annotation


# virtual methods
.method public addOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .registers 2

    return-void
.end method

.method public abstract applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z
.end method

.method public abstract buildReparentTransaction(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
.end method

.method public getBufferTransformHint()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public removeOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .registers 2

    return-void
.end method

.method public setTouchableRegion(Landroid/graphics/Region;)V
    .registers 2

    return-void
.end method
