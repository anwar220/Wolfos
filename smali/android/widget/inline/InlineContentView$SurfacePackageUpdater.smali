# classes4.dex

.class public interface abstract Landroid/widget/inline/InlineContentView$SurfacePackageUpdater;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/inline/InlineContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SurfacePackageUpdater"
.end annotation


# virtual methods
.method public abstract getSurfacePackage(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControlViewHost$SurfacePackage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSurfacePackageReleased()V
.end method
