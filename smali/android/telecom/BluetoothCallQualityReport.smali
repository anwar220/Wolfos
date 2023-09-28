# classes3.dex

.class public final Landroid/telecom/BluetoothCallQualityReport;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/BluetoothCallQualityReport$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/BluetoothCallQualityReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_BLUETOOTH_CALL_QUALITY_REPORT:Ljava/lang/String; = "android.telecom.event.BLUETOOTH_CALL_QUALITY_REPORT"

.field public static final EXTRA_BLUETOOTH_CALL_QUALITY_REPORT:Ljava/lang/String; = "android.telecom.extra.BLUETOOTH_CALL_QUALITY_REPORT"


# instance fields
.field private final mChoppyVoice:Z

.field private final mNegativeAcknowledgementCount:I

.field private final mPacketsNotReceivedCount:I

.field private final mRetransmittedPacketsCount:I

.field private final mRssiDbm:I

.field private final mSentTimestampMillis:J

.field private final mSnrDb:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/BluetoothCallQualityReport$1;

    invoke-direct {v0}, Landroid/telecom/BluetoothCallQualityReport$1;-><init>()V

    sput-object v0, Landroid/telecom/BluetoothCallQualityReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSentTimestampMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mChoppyVoice:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRssiDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSnrDb:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRetransmittedPacketsCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mPacketsNotReceivedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mNegativeAcknowledgementCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/BluetoothCallQualityReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/BluetoothCallQualityReport;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telecom/BluetoothCallQualityReport$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telecom/BluetoothCallQualityReport$Builder;->-$$Nest$fgetmSentTimestampMillis(Landroid/telecom/BluetoothCallQualityReport$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSentTimestampMillis:J

    invoke-static {p1}, Landroid/telecom/BluetoothCallQualityReport$Builder;->-$$Nest$fgetmChoppyVoice(Landroid/telecom/BluetoothCallQualityReport$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mChoppyVoice:Z

    invoke-static {p1}, Landroid/telecom/BluetoothCallQualityReport$Builder;->-$$Nest$fgetmRssiDbm(Landroid/telecom/BluetoothCallQualityReport$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRssiDbm:I

    invoke-static {p1}, Landroid/telecom/BluetoothCallQualityReport$Builder;->-$$Nest$fgetmSnrDb(Landroid/telecom/BluetoothCallQualityReport$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSnrDb:I

    invoke-static {p1}, Landroid/telecom/BluetoothCallQualityReport$Builder;->-$$Nest$fgetmRetransmittedPacketsCount(Landroid/telecom/BluetoothCallQualityReport$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRetransmittedPacketsCount:I

    invoke-static {p1}, Landroid/telecom/BluetoothCallQualityReport$Builder;->-$$Nest$fgetmPacketsNotReceivedCount(Landroid/telecom/BluetoothCallQualityReport$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mPacketsNotReceivedCount:I

    invoke-static {p1}, Landroid/telecom/BluetoothCallQualityReport$Builder;->-$$Nest$fgetmNegativeAcknowledgementCount(Landroid/telecom/BluetoothCallQualityReport$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mNegativeAcknowledgementCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/BluetoothCallQualityReport$Builder;Landroid/telecom/BluetoothCallQualityReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/BluetoothCallQualityReport;-><init>(Landroid/telecom/BluetoothCallQualityReport$Builder;)V

    return-void
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

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_44

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telecom/BluetoothCallQualityReport;

    iget-wide v3, p0, Landroid/telecom/BluetoothCallQualityReport;->mSentTimestampMillis:J

    iget-wide v5, v2, Landroid/telecom/BluetoothCallQualityReport;->mSentTimestampMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_42

    iget-boolean v3, p0, Landroid/telecom/BluetoothCallQualityReport;->mChoppyVoice:Z

    iget-boolean v4, v2, Landroid/telecom/BluetoothCallQualityReport;->mChoppyVoice:Z

    if-ne v3, v4, :cond_42

    iget v3, p0, Landroid/telecom/BluetoothCallQualityReport;->mRssiDbm:I

    iget v4, v2, Landroid/telecom/BluetoothCallQualityReport;->mRssiDbm:I

    if-ne v3, v4, :cond_42

    iget v3, p0, Landroid/telecom/BluetoothCallQualityReport;->mSnrDb:I

    iget v4, v2, Landroid/telecom/BluetoothCallQualityReport;->mSnrDb:I

    if-ne v3, v4, :cond_42

    iget v3, p0, Landroid/telecom/BluetoothCallQualityReport;->mRetransmittedPacketsCount:I

    iget v4, v2, Landroid/telecom/BluetoothCallQualityReport;->mRetransmittedPacketsCount:I

    if-ne v3, v4, :cond_42

    iget v3, p0, Landroid/telecom/BluetoothCallQualityReport;->mPacketsNotReceivedCount:I

    iget v4, v2, Landroid/telecom/BluetoothCallQualityReport;->mPacketsNotReceivedCount:I

    if-ne v3, v4, :cond_42

    iget v3, p0, Landroid/telecom/BluetoothCallQualityReport;->mNegativeAcknowledgementCount:I

    iget v4, v2, Landroid/telecom/BluetoothCallQualityReport;->mNegativeAcknowledgementCount:I

    if-ne v3, v4, :cond_42

    goto :goto_43

    :cond_42
    move v0, v1

    :goto_43
    return v0

    :cond_44
    :goto_44
    return v1
.end method

.method public getNegativeAcknowledgementCount()I
    .registers 2

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mNegativeAcknowledgementCount:I

    return v0
.end method

.method public getPacketsNotReceivedCount()I
    .registers 2

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mPacketsNotReceivedCount:I

    return v0
.end method

.method public getRetransmittedPacketsCount()I
    .registers 2

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRetransmittedPacketsCount:I

    return v0
.end method

.method public getRssiDbm()I
    .registers 2

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRssiDbm:I

    return v0
.end method

.method public getSentTimestampMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSentTimestampMillis:J

    return-wide v0
.end method

.method public getSnrDb()I
    .registers 2

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSnrDb:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/telecom/BluetoothCallQualityReport;->mSentTimestampMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telecom/BluetoothCallQualityReport;->mChoppyVoice:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telecom/BluetoothCallQualityReport;->mRssiDbm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telecom/BluetoothCallQualityReport;->mSnrDb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telecom/BluetoothCallQualityReport;->mRetransmittedPacketsCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telecom/BluetoothCallQualityReport;->mPacketsNotReceivedCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telecom/BluetoothCallQualityReport;->mNegativeAcknowledgementCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isChoppyVoice()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mChoppyVoice:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSentTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mChoppyVoice:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRssiDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSnrDb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRetransmittedPacketsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mPacketsNotReceivedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mNegativeAcknowledgementCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
