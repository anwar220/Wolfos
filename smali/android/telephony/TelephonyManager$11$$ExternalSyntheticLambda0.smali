# classes3.dex

.class public final synthetic Landroid/telephony/TelephonyManager$11$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyManager$11$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$11$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    iput p3, p0, Landroid/telephony/TelephonyManager$11$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/TelephonyManager$11$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$11$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    iget v2, p0, Landroid/telephony/TelephonyManager$11$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager$11;->lambda$onComplete$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V

    return-void
.end method
