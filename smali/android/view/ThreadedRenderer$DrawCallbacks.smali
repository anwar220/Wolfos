# classes3.dex

.class interface abstract Landroid/view/ThreadedRenderer$DrawCallbacks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DrawCallbacks"
.end annotation


# virtual methods
.method public abstract onPostDraw(Landroid/graphics/RecordingCanvas;)V
.end method

.method public abstract onPostRecordViewDraw()V
.end method

.method public abstract onPreDraw(Landroid/graphics/RecordingCanvas;)V
.end method

.method public abstract onPreRecordViewDraw()V
.end method
