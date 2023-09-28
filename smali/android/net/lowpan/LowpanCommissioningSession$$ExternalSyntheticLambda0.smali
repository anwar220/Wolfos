# classes2.dex

.class public final synthetic Landroid/net/lowpan/LowpanCommissioningSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/lowpan/LowpanCommissioningSession;


# direct methods
.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession$$ExternalSyntheticLambda0;->f$0:Landroid/net/lowpan/LowpanCommissioningSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$$ExternalSyntheticLambda0;->f$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-virtual {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->lambda$lockedCleanup$0$android-net-lowpan-LowpanCommissioningSession()V

    return-void
.end method
