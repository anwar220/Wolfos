# classes4.dex

.class public final synthetic Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/internal/infra/AbstractRemoteService;

    check-cast p2, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-static {p1, p2}, Lcom/android/internal/infra/AbstractRemoteService;->$r8$lambda$ldNkkT58p4_26OYFnZFfaAeiV3I(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    return-void
.end method
