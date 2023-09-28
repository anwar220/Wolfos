# classes2.dex

.class public abstract Landroid/media/metrics/Event;
.super Ljava/lang/Object;


# instance fields
.field mMetricsBundle:Landroid/os/Bundle;

.field final mTimeSinceCreatedMillis:J


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/Event;->mMetricsBundle:Landroid/os/Bundle;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/metrics/Event;->mTimeSinceCreatedMillis:J

    return-void
.end method

.method constructor <init>(JLandroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/Event;->mMetricsBundle:Landroid/os/Bundle;

    iput-wide p1, p0, Landroid/media/metrics/Event;->mTimeSinceCreatedMillis:J

    iput-object p3, p0, Landroid/media/metrics/Event;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getMetricsBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/media/metrics/Event;->mMetricsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTimeSinceCreatedMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/media/metrics/Event;->mTimeSinceCreatedMillis:J

    return-wide v0
.end method
