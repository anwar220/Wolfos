# classes2.dex

.class public final synthetic Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;

.field public final synthetic f$1:Landroid/net/Network;

.field public final synthetic f$2:Landroid/net/ProxyInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;Landroid/net/Network;Landroid/net/ProxyInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;

    iput-object p2, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/Network;

    iput-object p3, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda0;->f$2:Landroid/net/ProxyInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;

    iget-object v1, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/Network;

    iget-object v2, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda0;->f$2:Landroid/net/ProxyInfo;

    invoke-virtual {v0, v1, v2}, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;->lambda$onPacProxyInstalled$0$android-net-PacProxyManager$PacProxyInstalledListenerProxy(Landroid/net/Network;Landroid/net/ProxyInfo;)V

    return-void
.end method
