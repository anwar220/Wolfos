# classes4.dex

.class public Landroid/webkit/WebStorage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebStorage$Origin;,
        Landroid/webkit/WebStorage$QuotaUpdater;
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

.method public static getInstance()Landroid/webkit/WebStorage;
    .registers 1

    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getWebStorage()Landroid/webkit/WebStorage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllData()V
    .registers 1

    return-void
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public getOrigins(Landroid/webkit/ValueCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setQuotaForOrigin(Ljava/lang/String;J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method