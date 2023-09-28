# classes4.dex

.class public final synthetic Lcom/android/internal/infra/AbstractRemoteService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/internal/infra/AbstractRemoteService;

    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractRemoteService;->handleUnbind()V

    return-void
.end method
