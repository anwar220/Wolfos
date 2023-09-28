# classes2.dex

.class public final Landroid/media/metrics/PlaybackStateEvent;
.super Landroid/media/metrics/Event;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/PlaybackStateEvent$Builder;,
        Landroid/media/metrics/PlaybackStateEvent$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/PlaybackStateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_ABANDONED:I = 0xf

.field public static final STATE_BUFFERING:I = 0x6

.field public static final STATE_ENDED:I = 0xb

.field public static final STATE_FAILED:I = 0xd

.field public static final STATE_INTERRUPTED_BY_AD:I = 0xe

.field public static final STATE_JOINING_BACKGROUND:I = 0x1

.field public static final STATE_JOINING_FOREGROUND:I = 0x2

.field public static final STATE_NOT_STARTED:I = 0x0

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_PAUSED_BUFFERING:I = 0x7

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_SEEKING:I = 0x5

.field public static final STATE_STOPPED:I = 0xc

.field public static final STATE_SUPPRESSED:I = 0x9

.field public static final STATE_SUPPRESSED_BUFFERING:I = 0xa


# instance fields
.field private final mState:I

.field private final mTimeSinceCreatedMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/metrics/PlaybackStateEvent$1;

    invoke-direct {v0}, Landroid/media/metrics/PlaybackStateEvent$1;-><init>()V

    sput-object v0, Landroid/media/metrics/PlaybackStateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJLandroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    iput-wide p2, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    iput p1, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    invoke-virtual {p4}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(IJLandroid/os/Bundle;Landroid/media/metrics/PlaybackStateEvent-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/metrics/PlaybackStateEvent;-><init>(IJLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    iput-wide v1, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    iput-object v3, p0, Landroid/media/metrics/PlaybackStateEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/metrics/PlaybackStateEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/metrics/PlaybackStateEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_36

    :pswitch_3  #0x8
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0xf
    const-string v0, "STATE_ABANDONED"

    return-object v0

    :pswitch_b  #0xe
    const-string v0, "STATE_INTERRUPTED_BY_AD"

    return-object v0

    :pswitch_e  #0xd
    const-string v0, "STATE_FAILED"

    return-object v0

    :pswitch_11  #0xc
    const-string v0, "STATE_STOPPED"

    return-object v0

    :pswitch_14  #0xb
    const-string v0, "STATE_ENDED"

    return-object v0

    :pswitch_17  #0xa
    const-string v0, "STATE_SUPPRESSED_BUFFERING"

    return-object v0

    :pswitch_1a  #0x9
    const-string v0, "STATE_SUPPRESSED"

    return-object v0

    :pswitch_1d  #0x7
    const-string v0, "STATE_PAUSED_BUFFERING"

    return-object v0

    :pswitch_20  #0x6
    const-string v0, "STATE_BUFFERING"

    return-object v0

    :pswitch_23  #0x5
    const-string v0, "STATE_SEEKING"

    return-object v0

    :pswitch_26  #0x4
    const-string v0, "STATE_PAUSED"

    return-object v0

    :pswitch_29  #0x3
    const-string v0, "STATE_PLAYING"

    return-object v0

    :pswitch_2c  #0x2
    const-string v0, "STATE_JOINING_FOREGROUND"

    return-object v0

    :pswitch_2f  #0x1
    const-string v0, "STATE_JOINING_BACKGROUND"

    return-object v0

    :pswitch_32  #0x0
    const-string v0, "STATE_NOT_STARTED"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32  #00000000
        :pswitch_2f  #00000001
        :pswitch_2c  #00000002
        :pswitch_29  #00000003
        :pswitch_26  #00000004
        :pswitch_23  #00000005
        :pswitch_20  #00000006
        :pswitch_1d  #00000007
        :pswitch_3  #00000008
        :pswitch_1a  #00000009
        :pswitch_17  #0000000a
        :pswitch_14  #0000000b
        :pswitch_11  #0000000c
        :pswitch_e  #0000000d
        :pswitch_b  #0000000e
        :pswitch_8  #0000000f
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_26

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/metrics/PlaybackStateEvent;

    iget v3, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    iget v4, v2, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    if-ne v3, v4, :cond_24

    iget-wide v3, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0

    :cond_26
    :goto_26
    return v1
.end method

.method public getMetricsBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    return v0
.end method

.method public getTimeSinceCreatedMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/media/metrics/PlaybackStateEvent;->mMetricsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
