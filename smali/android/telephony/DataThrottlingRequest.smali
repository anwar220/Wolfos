# classes3.dex

.class public final Landroid/telephony/DataThrottlingRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/DataThrottlingRequest$Builder;,
        Landroid/telephony/DataThrottlingRequest$DataThrottlingAction;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/DataThrottlingRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_THROTTLING_ACTION_HOLD:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DATA_THROTTLING_ACTION_NO_DATA_THROTTLING:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DATA_THROTTLING_ACTION_THROTTLE_PRIMARY_CARRIER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DATA_THROTTLING_ACTION_THROTTLE_SECONDARY_CARRIER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private mCompletionDurationMillis:J

.field private mDataThrottlingAction:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/DataThrottlingRequest$1;

    invoke-direct {v0}, Landroid/telephony/DataThrottlingRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/DataThrottlingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/DataThrottlingRequest;->mDataThrottlingAction:I

    iput-wide p2, p0, Landroid/telephony/DataThrottlingRequest;->mCompletionDurationMillis:J

    return-void
.end method

.method synthetic constructor <init>(IJLandroid/telephony/DataThrottlingRequest-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/DataThrottlingRequest;-><init>(IJ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataThrottlingRequest;->mDataThrottlingAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/DataThrottlingRequest;->mCompletionDurationMillis:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/DataThrottlingRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/DataThrottlingRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCompletionDurationMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/DataThrottlingRequest;->mCompletionDurationMillis:J

    return-wide v0
.end method

.method public getDataThrottlingAction()I
    .registers 2

    iget v0, p0, Landroid/telephony/DataThrottlingRequest;->mDataThrottlingAction:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataThrottlingRequest , DataThrottlingAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/DataThrottlingRequest;->mDataThrottlingAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completionDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/DataThrottlingRequest;->mCompletionDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/telephony/DataThrottlingRequest;->mDataThrottlingAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/DataThrottlingRequest;->mCompletionDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
