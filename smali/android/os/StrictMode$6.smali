# classes3.dex

.class Landroid/os/StrictMode$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsLastInstanceCountCheckMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    invoke-static {v0, v1}, Landroid/os/StrictMode;->-$$Nest$sfputsLastInstanceCountCheckMillis(J)V

    invoke-static {}, Landroid/os/StrictMode;->conditionallyCheckInstanceCounts()V

    :cond_16
    const/4 v2, 0x1

    return v2
.end method
