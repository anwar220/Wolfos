# classes4.dex

.class public final synthetic Lcom/android/internal/os/FuseAppLoop$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/os/FuseAppLoop;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/os/FuseAppLoop;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/FuseAppLoop$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/os/FuseAppLoop;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v0}, Lcom/android/internal/os/FuseAppLoop;->lambda$new$0$com-android-internal-os-FuseAppLoop()V

    return-void
.end method
