# classes3.dex

.class public final synthetic Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/service/trust/TrustAgentService;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/service/trust/TrustAgentService;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda0;->f$0:Landroid/service/trust/TrustAgentService;

    iput-object p2, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda0;->f$0:Landroid/service/trust/TrustAgentService;

    iget-object v1, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Landroid/service/trust/GrantTrustResult;

    invoke-virtual {v0, v1, p1}, Landroid/service/trust/TrustAgentService;->lambda$grantTrust$1$android-service-trust-TrustAgentService(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V

    return-void
.end method
