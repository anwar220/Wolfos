# classes4.dex

.class public interface abstract Landroid/webkit/PacProcessor;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public static createInstance()Landroid/webkit/PacProcessor;
    .registers 1

    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->createPacProcessor()Landroid/webkit/PacProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Landroid/webkit/PacProcessor;
    .registers 1

    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getPacProcessor()Landroid/webkit/PacProcessor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract findProxyForUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getNetwork()Landroid/net/Network;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNetwork(Landroid/net/Network;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setProxyScript(Ljava/lang/String;)Z
.end method
