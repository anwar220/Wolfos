# classes3.dex

.class public final synthetic Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public synthetic constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda0;->f$0:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/os/PowerManager$WakeLock$$ExternalSyntheticLambda0;->f$0:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->lambda$new$0$android-os-PowerManager$WakeLock()V

    return-void
.end method
