# classes4.dex

.class public abstract Landroid/webkit/WebMessagePort;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebMessagePort$WebMessageCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract postMessage(Landroid/webkit/WebMessage;)V
.end method

.method public abstract setWebMessageCallback(Landroid/webkit/WebMessagePort$WebMessageCallback;)V
.end method

.method public abstract setWebMessageCallback(Landroid/webkit/WebMessagePort$WebMessageCallback;Landroid/os/Handler;)V
.end method
