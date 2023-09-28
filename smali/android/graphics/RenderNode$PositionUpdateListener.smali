# classes.dex

.class public interface abstract Landroid/graphics/RenderNode$PositionUpdateListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/RenderNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PositionUpdateListener"
.end annotation


# direct methods
.method public static callApplyStretch(Ljava/lang/ref/WeakReference;JFFFFFFFFFF)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;JFFFFFFFFFF)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RenderNode$PositionUpdateListener;

    if-eqz v0, :cond_23

    move-object v1, v0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-interface/range {v1 .. v13}, Landroid/graphics/RenderNode$PositionUpdateListener;->applyStretch(JFFFFFFFFFF)V

    const/4 v1, 0x1

    return v1

    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public static callPositionChanged(Ljava/lang/ref/WeakReference;JIIII)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;JIIII)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RenderNode$PositionUpdateListener;

    if-eqz v0, :cond_13

    move-object v1, v0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionChanged(JIIII)V

    const/4 v1, 0x1

    return v1

    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public static callPositionLost(Ljava/lang/ref/WeakReference;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;J)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RenderNode$PositionUpdateListener;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1, p2}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionLost(J)V

    const/4 v1, 0x1

    return v1

    :cond_d
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public applyStretch(JFFFFFFFFFF)V
    .registers 13

    return-void
.end method

.method public abstract positionChanged(JIIII)V
.end method

.method public abstract positionLost(J)V
.end method
