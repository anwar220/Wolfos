# classes3.dex

.class public final Landroid/telecom/BluetoothCallQualityReport$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/BluetoothCallQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mChoppyVoice:Z

.field private mNegativeAcknowledgementCount:I

.field private mPacketsNotReceivedCount:I

.field private mRetransmittedPacketsCount:I

.field private mRssiDbm:I

.field private mSentTimestampMillis:J

.field private mSnrDb:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmChoppyVoice(Landroid/telecom/BluetoothCallQualityReport$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mChoppyVoice:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNegativeAcknowledgementCount(Landroid/telecom/BluetoothCallQualityReport$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mNegativeAcknowledgementCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPacketsNotReceivedCount(Landroid/telecom/BluetoothCallQualityReport$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mPacketsNotReceivedCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetransmittedPacketsCount(Landroid/telecom/BluetoothCallQualityReport$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mRetransmittedPacketsCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRssiDbm(Landroid/telecom/BluetoothCallQualityReport$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mRssiDbm:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSentTimestampMillis(Landroid/telecom/BluetoothCallQualityReport$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mSentTimestampMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSnrDb(Landroid/telecom/BluetoothCallQualityReport$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mSnrDb:I

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/telecom/BluetoothCallQualityReport;
    .registers 3

    new-instance v0, Landroid/telecom/BluetoothCallQualityReport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/BluetoothCallQualityReport;-><init>(Landroid/telecom/BluetoothCallQualityReport$Builder;Landroid/telecom/BluetoothCallQualityReport-IA;)V

    return-object v0
.end method

.method public setChoppyVoice(Z)Landroid/telecom/BluetoothCallQualityReport$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mChoppyVoice:Z

    return-object p0
.end method

.method public setNegativeAcknowledgementCount(I)Landroid/telecom/BluetoothCallQualityReport$Builder;
    .registers 2

    iput p1, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mNegativeAcknowledgementCount:I

    return-object p0
.end method

.method public setPacketsNotReceivedCount(I)Landroid/telecom/BluetoothCallQualityReport$Builder;
    .registers 2

    iput p1, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mPacketsNotReceivedCount:I

    return-object p0
.end method

.method public setRetransmittedPacketsCount(I)Landroid/telecom/BluetoothCallQualityReport$Builder;
    .registers 2

    iput p1, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mRetransmittedPacketsCount:I

    return-object p0
.end method

.method public setRssiDbm(I)Landroid/telecom/BluetoothCallQualityReport$Builder;
    .registers 2

    iput p1, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mRssiDbm:I

    return-object p0
.end method

.method public setSentTimestampMillis(J)Landroid/telecom/BluetoothCallQualityReport$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mSentTimestampMillis:J

    return-object p0
.end method

.method public setSnrDb(I)Landroid/telecom/BluetoothCallQualityReport$Builder;
    .registers 2

    iput p1, p0, Landroid/telecom/BluetoothCallQualityReport$Builder;->mSnrDb:I

    return-object p0
.end method
