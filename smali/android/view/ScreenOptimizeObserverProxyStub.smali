# classes3.dex

.class public interface abstract Landroid/view/ScreenOptimizeObserverProxyStub;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenOptimizeObserverProxyStub"


# direct methods
.method public static get()Landroid/view/ScreenOptimizeObserverProxyStub;
    .registers 1

    const-class v0, Landroid/view/ScreenOptimizeObserverProxyStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ScreenOptimizeObserverProxyStub;

    return-object v0
.end method


# virtual methods
.method public abstract createObserver(Landroid/content/Context;Landroid/os/Handler;)V
.end method
