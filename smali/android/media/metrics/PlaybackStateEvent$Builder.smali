# classes2.dex

.class public final Landroid/media/metrics/PlaybackStateEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/PlaybackStateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMetricsBundle:Landroid/os/Bundle;

.field private mState:I

.field private mTimeSinceCreatedMillis:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mTimeSinceCreatedMillis:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Landroid/media/metrics/PlaybackStateEvent;
    .registers 8

    new-instance v6, Landroid/media/metrics/PlaybackStateEvent;

    iget v1, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mState:I

    iget-wide v2, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mTimeSinceCreatedMillis:J

    iget-object v4, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/metrics/PlaybackStateEvent;-><init>(IJLandroid/os/Bundle;Landroid/media/metrics/PlaybackStateEvent-IA;)V

    return-object v0
.end method

.method public setMetricsBundle(Landroid/os/Bundle;)Landroid/media/metrics/PlaybackStateEvent$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mState:I

    return-object p0
.end method

.method public setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/metrics/PlaybackStateEvent$Builder;->mTimeSinceCreatedMillis:J

    return-object p0
.end method
