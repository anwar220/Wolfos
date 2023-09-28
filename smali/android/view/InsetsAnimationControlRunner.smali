# classes3.dex

.class public interface abstract Landroid/view/InsetsAnimationControlRunner;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancel()V
.end method

.method public controlsInternalType(I)Z
    .registers 4

    invoke-interface {p0}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract getAnimation()Landroid/view/WindowInsetsAnimation;
.end method

.method public abstract getAnimationType()I
.end method

.method public abstract getControllingTypes()I
.end method

.method public abstract getTypes()I
.end method

.method public abstract notifyControlRevoked(I)V
.end method

.method public abstract updateSurfacePosition(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation
.end method
