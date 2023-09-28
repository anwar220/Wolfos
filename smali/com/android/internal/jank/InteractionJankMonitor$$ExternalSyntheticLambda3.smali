# classes4.dex

.class public final synthetic Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/jank/InteractionJankMonitor$Session;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-static {v0}, Lcom/android/internal/jank/InteractionJankMonitor;->lambda$trigger$3(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V

    return-void
.end method
