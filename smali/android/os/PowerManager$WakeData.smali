# classes3.dex

.class public Landroid/os/PowerManager$WakeData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeData"
.end annotation


# instance fields
.field public final sleepDuration:J

.field public final wakeReason:I

.field public final wakeTime:J


# direct methods
.method public constructor <init>(JIJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    iput p3, p0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    iput-wide p4, p0, Landroid/os/PowerManager$WakeData;->sleepDuration:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Landroid/os/PowerManager$WakeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, Landroid/os/PowerManager$WakeData;

    iget-wide v2, p0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    iget-wide v4, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    iget v2, p0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    iget v3, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    if-ne v2, v3, :cond_1f

    iget-wide v2, p0, Landroid/os/PowerManager$WakeData;->sleepDuration:J

    iget-wide v4, v0, Landroid/os/PowerManager$WakeData;->sleepDuration:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1

    :cond_20
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/PowerManager$WakeData;->sleepDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method