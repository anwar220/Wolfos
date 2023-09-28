# classes3.dex

.class public final Landroid/telephony/data/ThrottleStatus$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/ThrottleStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final NO_THROTTLE_EXPIRY_TIME:J = -0x1L


# instance fields
.field private mApnType:I

.field private mRetryType:I

.field private mSlotIndex:I

.field private mThrottleExpiryTimeMillis:J

.field private mThrottleType:I

.field private mTransportType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/data/ThrottleStatus;
    .registers 11

    new-instance v9, Landroid/telephony/data/ThrottleStatus;

    iget v1, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mSlotIndex:I

    iget v2, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mTransportType:I

    iget v3, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mApnType:I

    iget v4, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mThrottleType:I

    iget-wide v5, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mThrottleExpiryTimeMillis:J

    iget v7, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mRetryType:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/telephony/data/ThrottleStatus;-><init>(IIIIJILandroid/telephony/data/ThrottleStatus-IA;)V

    return-object v9
.end method

.method public setApnType(I)Landroid/telephony/data/ThrottleStatus$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mApnType:I

    return-object p0
.end method

.method public setNoThrottle()Landroid/telephony/data/ThrottleStatus$Builder;
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mThrottleType:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mThrottleExpiryTimeMillis:J

    return-object p0
.end method

.method public setRetryType(I)Landroid/telephony/data/ThrottleStatus$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mRetryType:I

    return-object p0
.end method

.method public setSlotIndex(I)Landroid/telephony/data/ThrottleStatus$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mSlotIndex:I

    return-object p0
.end method

.method public setThrottleExpiryTimeMillis(J)Landroid/telephony/data/ThrottleStatus$Builder;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_c

    iput-wide p1, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mThrottleExpiryTimeMillis:J

    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mThrottleType:I

    return-object p0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "throttleExpiryTimeMillis must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransportType(I)Landroid/telephony/data/ThrottleStatus$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/ThrottleStatus$Builder;->mTransportType:I

    return-object p0
.end method
