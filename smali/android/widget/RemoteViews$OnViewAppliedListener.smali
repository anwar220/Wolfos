# classes4.dex

.class public interface abstract Landroid/widget/RemoteViews$OnViewAppliedListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnViewAppliedListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onViewApplied(Landroid/view/View;)V
.end method

.method public onViewInflated(Landroid/view/View;)V
    .registers 2

    return-void
.end method
