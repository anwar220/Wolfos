# classes3.dex

.class public final synthetic Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Landroid/service/trust/GrantTrustResult;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;->f$1:Landroid/service/trust/GrantTrustResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;->f$1:Landroid/service/trust/GrantTrustResult;

    invoke-static {v0, v1}, Landroid/service/trust/TrustAgentService;->lambda$grantTrust$0(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V

    return-void
.end method
