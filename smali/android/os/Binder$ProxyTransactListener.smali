# classes3.dex

.class public interface abstract Landroid/os/Binder$ProxyTransactListener;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProxyTransactListener"
.end annotation


# virtual methods
.method public abstract onTransactEnded(Ljava/lang/Object;)V
.end method

.method public abstract onTransactStarted(Landroid/os/IBinder;I)Ljava/lang/Object;
.end method

.method public onTransactStarted(Landroid/os/IBinder;II)Ljava/lang/Object;
    .registers 5

    invoke-interface {p0, p1, p2}, Landroid/os/Binder$ProxyTransactListener;->onTransactStarted(Landroid/os/IBinder;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
