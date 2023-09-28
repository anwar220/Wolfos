# classes2.dex

.class public final Landroid/location/GnssNavigationMessage;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessage$Callback;,
        Landroid/location/GnssNavigationMessage$GnssNavigationMessageStatus;,
        Landroid/location/GnssNavigationMessage$GnssNavigationMessageType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[B

.field public static final STATUS_PARITY_PASSED:I = 0x1

.field public static final STATUS_PARITY_REBUILT:I = 0x2

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final TYPE_BDS_CNAV1:I = 0x503

.field public static final TYPE_BDS_CNAV2:I = 0x504

.field public static final TYPE_BDS_D1:I = 0x501

.field public static final TYPE_BDS_D2:I = 0x502

.field public static final TYPE_GAL_F:I = 0x602

.field public static final TYPE_GAL_I:I = 0x601

.field public static final TYPE_GLO_L1CA:I = 0x301

.field public static final TYPE_GPS_CNAV2:I = 0x104

.field public static final TYPE_GPS_L1CA:I = 0x101

.field public static final TYPE_GPS_L2CNAV:I = 0x102

.field public static final TYPE_GPS_L5CNAV:I = 0x103

.field public static final TYPE_IRN_L5CA:I = 0x701

.field public static final TYPE_QZS_L1CA:I = 0x401

.field public static final TYPE_SBS:I = 0x201

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private mData:[B

.field private mMessageId:I

.field private mStatus:I

.field private mSubmessageId:I

.field private mSvid:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    new-instance v0, Landroid/location/GnssNavigationMessage$1;

    invoke-direct {v0}, Landroid/location/GnssNavigationMessage$1;-><init>()V

    sput-object v0, Landroid/location/GnssNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    return-void
.end method

.method private getStatusString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    packed-switch v0, :pswitch_data_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_21  #0x2
    const-string v0, "ParityRebuilt"

    return-object v0

    :pswitch_24  #0x1
    const-string v0, "ParityPassed"

    return-object v0

    :pswitch_27  #0x0
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27  #00000000
        :pswitch_24  #00000001
        :pswitch_21  #00000002
    .end packed-switch
.end method

.method private getTypeString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    sparse-switch v0, :sswitch_data_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_21
    const-string v0, "IRNSS L5 C/A"

    return-object v0

    :sswitch_24
    const-string v0, "Galileo F"

    return-object v0

    :sswitch_27
    const-string v0, "Galileo I"

    return-object v0

    :sswitch_2a
    const-string v0, "Beidou CNAV2"

    return-object v0

    :sswitch_2d
    const-string v0, "Beidou CNAV1"

    return-object v0

    :sswitch_30
    const-string v0, "Beidou D2"

    return-object v0

    :sswitch_33
    const-string v0, "Beidou D1"

    return-object v0

    :sswitch_36
    const-string v0, "QZSS L1 C/A"

    return-object v0

    :sswitch_39
    const-string v0, "Glonass L1 C/A"

    return-object v0

    :sswitch_3c
    const-string v0, "SBS"

    return-object v0

    :sswitch_3f
    const-string v0, "GPS CNAV2"

    return-object v0

    :sswitch_42
    const-string v0, "GPS L5-CNAV"

    return-object v0

    :sswitch_45
    const-string v0, "GPS L2-CNAV"

    return-object v0

    :sswitch_48
    const-string v0, "GPS L1 C/A"

    return-object v0

    :sswitch_4b
    const-string v0, "Unknown"

    return-object v0

    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_4b
        0x101 -> :sswitch_48
        0x102 -> :sswitch_45
        0x103 -> :sswitch_42
        0x104 -> :sswitch_3f
        0x201 -> :sswitch_3c
        0x301 -> :sswitch_39
        0x401 -> :sswitch_36
        0x501 -> :sswitch_33
        0x502 -> :sswitch_30
        0x503 -> :sswitch_2d
        0x504 -> :sswitch_2a
        0x601 -> :sswitch_27
        0x602 -> :sswitch_24
        0x701 -> :sswitch_21
    .end sparse-switch
.end method

.method private initialize()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    iput v1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    sget-object v1, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    iput-object v1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .registers 2

    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    return-object v0
.end method

.method public getMessageId()I
    .registers 2

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return v0
.end method

.method public getSubmessageId()I
    .registers 2

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    return v0
.end method

.method public getSvid()I
    .registers 2

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    return v0
.end method

.method public reset()V
    .registers 1

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    return-void
.end method

.method public set(Landroid/location/GnssNavigationMessage;)V
    .registers 3

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mType:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSvid:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mMessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    iget-object v0, p1, Landroid/location/GnssNavigationMessage;->mData:[B

    iput-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mStatus:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return-void
.end method

.method public setData([B)V
    .registers 4

    if-eqz p1, :cond_5

    iput-object p1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    return-void

    :cond_5
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Data must be a non-null array"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMessageId(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return-void
.end method

.method public setSubmessageId(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    return-void
.end method

.method public setSvid(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const-string v0, "   %-15s = %s\n"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GnssNavigationMessage:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Type"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getTypeString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "   %-15s = %s\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "Svid"

    aput-object v7, v3, v5

    iget v7, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "Status"

    aput-object v7, v3, v5

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getStatusString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "MessageId"

    aput-object v7, v3, v5

    iget v7, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v7, "SubmessageId"

    aput-object v7, v3, v5

    iget v7, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Data"

    aput-object v3, v2, v5

    const-string v3, "{"

    aput-object v3, v2, v6

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        "

    iget-object v3, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    array-length v4, v3

    :goto_89
    if-ge v5, v4, :cond_98

    aget-byte v6, v3, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    :cond_98
    const-string v3, " }"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
