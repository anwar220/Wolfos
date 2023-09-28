# classes3.dex

.class Landroid/util/BoostFramework$ScrollOptimizer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/BoostFramework$ScrollOptimizer;->setFrameInterval(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$frameIntervalNanos:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    iput-wide p1, p0, Landroid/util/BoostFramework$ScrollOptimizer$1;->val$frameIntervalNanos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    invoke-static {}, Landroid/util/BoostFramework$ScrollOptimizer;->-$$Nest$sminitQXPerfFuncs()V

    invoke-static {}, Landroid/util/BoostFramework$ScrollOptimizer;->-$$Nest$sfgetsScrollOptProp()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Landroid/util/BoostFramework$ScrollOptimizer;->-$$Nest$sfgetsSetFrameInterval()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {}, Landroid/util/BoostFramework$ScrollOptimizer;->-$$Nest$sfgetsSetFrameInterval()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Landroid/util/BoostFramework$ScrollOptimizer$1;->val$frameIntervalNanos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Landroid/util/BoostFramework$ScrollOptimizer;->-$$Nest$sfputsScrollOptEnable(Z)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    :cond_26
    goto :goto_32

    :catch_27
    move-exception v0

    const-string v1, "BoostFramework"

    const-string v2, "Failed to run initThread."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_32
    return-void
.end method
