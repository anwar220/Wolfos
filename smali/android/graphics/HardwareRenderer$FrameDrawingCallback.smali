# classes.dex

.class public interface abstract Landroid/graphics/HardwareRenderer$FrameDrawingCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameDrawingCallback"
.end annotation


# virtual methods
.method public onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .registers 5

    invoke-interface {p0, p2, p3}, Landroid/graphics/HardwareRenderer$FrameDrawingCallback;->onFrameDraw(J)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onFrameDraw(J)V
.end method
