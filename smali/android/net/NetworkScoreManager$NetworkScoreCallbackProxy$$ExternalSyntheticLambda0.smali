# classes2.dex

.class public final synthetic Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->lambda$clearScores$1$android-net-NetworkScoreManager$NetworkScoreCallbackProxy()V

    return-void
.end method
