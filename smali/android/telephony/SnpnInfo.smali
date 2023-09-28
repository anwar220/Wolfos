# classes3.dex

.class public final Landroid/telephony/SnpnInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SnpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNAVAILABLE:I = 0x7fffffff


# instance fields
.field private mLevel:I

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mNid:[B

.field private mOperatorNumeric:Ljava/lang/String;

.field private mSignalQuality:I

.field private mSignalStrength:I

.field private mSsRsrpThresholds:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/SnpnInfo$1;

    invoke-direct {v0}, Landroid/telephony/SnpnInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SnpnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mSsRsrpThresholds:[I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    return-void

    nop

    :array_20
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mSsRsrpThresholds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_19

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_1c

    :cond_19
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    :goto_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    return-void

    nop

    :array_42
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/SnpnInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/SnpnInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/SnpnInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mSsRsrpThresholds:[I

    iget-object v0, p1, Landroid/telephony/SnpnInfo;->mNid:[B

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    iget-object v0, p1, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    iget-object v0, p1, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    iget-object v0, p1, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    iget v0, p1, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    iget v0, p1, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    iput v0, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    iget v0, p1, Landroid/telephony/SnpnInfo;->mLevel:I

    iput v0, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    return-void

    :array_28
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mSsRsrpThresholds:[I

    iput-object p1, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    iput-object p2, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    iput p5, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    iput p6, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->updateLevel()V

    return-void

    nop

    :array_1c
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data
.end method

.method private updateLevelWithMeasure(I[I)I
    .registers 4

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_7

    const/4 v0, 0x0

    goto :goto_24

    :cond_7
    const/4 v0, 0x3

    aget v0, p2, v0

    if-lt p1, v0, :cond_e

    const/4 v0, 0x4

    goto :goto_24

    :cond_e
    const/4 v0, 0x2

    aget v0, p2, v0

    if-lt p1, v0, :cond_15

    const/4 v0, 0x3

    goto :goto_24

    :cond_15
    const/4 v0, 0x1

    aget v0, p2, v0

    if-lt p1, v0, :cond_1c

    const/4 v0, 0x2

    goto :goto_24

    :cond_1c
    const/4 v0, 0x0

    aget v0, p2, v0

    if-lt p1, v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    move-object v2, p1

    check-cast v2, Landroid/telephony/SnpnInfo;

    iget-object v3, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    iget-object v4, v2, Landroid/telephony/SnpnInfo;->mNid:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget v3, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    iget v4, v2, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    if-ne v3, v4, :cond_46

    iget v3, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    iget v4, v2, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    if-ne v3, v4, :cond_46

    iget v3, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    iget v4, v2, Landroid/telephony/SnpnInfo;->mLevel:I

    if-ne v3, v4, :cond_46

    goto :goto_47

    :cond_46
    move v0, v1

    :goto_47
    return v0
.end method

.method public getLevel()I
    .registers 2

    iget v0, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    return v0
.end method

.method public getMcc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public getNid()[B
    .registers 2

    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalQuality()I
    .registers 2

    iget v0, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    return v0
.end method

.method public getSignalStrength()I
    .registers 2

    iget v0, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->getNid()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMcc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->getMcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mMnc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOperatorNumeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mSignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->getSignalStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mSignalQuality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->getSignalQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLevel()V
    .registers 4

    const v0, 0x7fffffff

    iget v1, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    iget-object v2, p0, Landroid/telephony/SnpnInfo;->mSsRsrpThresholds:[I

    invoke-direct {p0, v1, v2}, Landroid/telephony/SnpnInfo;->updateLevelWithMeasure(I[I)I

    move-result v0

    iput v0, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    if-eqz v0, :cond_11

    array-length v1, v0

    if-lez v1, :cond_11

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_15

    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_15
    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
