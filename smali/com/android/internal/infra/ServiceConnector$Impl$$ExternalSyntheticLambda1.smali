# classes4.dex

.class public final synthetic Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/ServiceConnector$Impl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/infra/ServiceConnector$Impl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/infra/ServiceConnector$Impl;

    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbindJobThread()V

    return-void
.end method
