# classes4.dex

.class public final synthetic Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/os/IInterface;

    invoke-static {p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->lambda$connect$0(Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object p1

    return-object p1
.end method
