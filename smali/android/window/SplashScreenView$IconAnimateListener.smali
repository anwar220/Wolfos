# classes4.dex

.class public interface abstract Landroid/window/SplashScreenView$IconAnimateListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IconAnimateListener"
.end annotation


# virtual methods
.method public abstract prepareAnimate(Ljava/util/function/LongConsumer;)V
.end method

.method public setAnimationJankMonitoring(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 2

    return-void
.end method

.method public abstract stopAnimation()V
.end method
