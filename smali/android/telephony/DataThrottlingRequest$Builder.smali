# classes3.dex

.class public final Landroid/telephony/DataThrottlingRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DataThrottlingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCompletionDurationMillis:J

.field private mDataThrottlingAction:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/DataThrottlingRequest;
    .registers 7

    iget-wide v0, p0, Landroid/telephony/DataThrottlingRequest$Builder;->mCompletionDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_25

    iget v4, p0, Landroid/telephony/DataThrottlingRequest$Builder;->mDataThrottlingAction:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1a

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    goto :goto_1a

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "completionDurationMillis must be 0 for DataThrottlingRequest.DATA_THROTTLING_ACTION_HOLD"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_1a
    new-instance v0, Landroid/telephony/DataThrottlingRequest;

    iget v1, p0, Landroid/telephony/DataThrottlingRequest$Builder;->mDataThrottlingAction:I

    iget-wide v2, p0, Landroid/telephony/DataThrottlingRequest$Builder;->mCompletionDurationMillis:J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/DataThrottlingRequest;-><init>(IJLandroid/telephony/DataThrottlingRequest-IA;)V

    return-object v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "completionDurationMillis cannot be a negative number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCompletionDurationMillis(J)Landroid/telephony/DataThrottlingRequest$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/telephony/DataThrottlingRequest$Builder;->mCompletionDurationMillis:J

    return-object p0
.end method

.method public setDataThrottlingAction(I)Landroid/telephony/DataThrottlingRequest$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/DataThrottlingRequest$Builder;->mDataThrottlingAction:I

    return-object p0
.end method
