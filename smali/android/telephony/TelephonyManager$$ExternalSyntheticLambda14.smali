# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda14;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda14;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda14;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda14;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->lambda$setSimPowerStateForSlot$14(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method
