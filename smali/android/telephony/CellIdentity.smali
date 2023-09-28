# classes3.dex

.class public abstract Landroid/telephony/CellIdentity;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentity;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_CHANNEL_NUMBER:I = 0x7fffffff

.field public static final MCC_LENGTH:I = 0x3

.field public static final MNC_MAX_LENGTH:I = 0x3

.field public static final MNC_MIN_LENGTH:I = 0x2


# instance fields
.field protected mAlphaLong:Ljava/lang/String;

.field protected mAlphaShort:Ljava/lang/String;

.field protected mGlobalCellId:Ljava/lang/String;

.field protected final mMccStr:Ljava/lang/String;

.field protected final mMncStr:Ljava/lang/String;

.field protected final mTag:Ljava/lang/String;

.field protected final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CellIdentity$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentity$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .registers 11

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/CellIdentity;->mTag:Ljava/lang/String;

    iput p2, p0, Landroid/telephony/CellIdentity;->mType:I

    const v0, 0x7fffffff

    const/4 v1, 0x0

    if-eqz p3, :cond_42

    invoke-static {p3}, Landroid/telephony/CellIdentity;->isMcc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_42

    :cond_14
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_3f

    :cond_25
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid MCC format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/telephony/CellIdentity;->log(Ljava/lang/String;)V

    goto :goto_44

    :cond_3f
    :goto_3f
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    goto :goto_44

    :cond_42
    :goto_42
    iput-object p3, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    :goto_44
    if-eqz p4, :cond_7b

    invoke-static {p4}, Landroid/telephony/CellIdentity;->isMnc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    goto :goto_7b

    :cond_4d
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_78

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    goto :goto_78

    :cond_5e
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid MNC format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/CellIdentity;->log(Ljava/lang/String;)V

    goto :goto_7d

    :cond_78
    :goto_78
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    goto :goto_7d

    :cond_7b
    :goto_7b
    iput-object p4, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    :goto_7d
    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_85

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    if-eqz v1, :cond_8b

    :cond_85
    if-nez v0, :cond_97

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    if-eqz v0, :cond_97

    :cond_8b
    nop

    const-string v0, "a3ab0b9d-f2aa-4baf-911d-7096c0d4645a"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "CellIdentity Missing Half of PLMN ID"

    invoke-static {v0, v1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    :cond_97
    iput-object p5, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    iput-object p6, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    return-void
.end method

.method protected static final inRangeOrUnavailable(III)I
    .registers 4

    if-lt p0, p1, :cond_6

    if-le p0, p2, :cond_5

    goto :goto_6

    :cond_5
    return p0

    :cond_6
    :goto_6
    const v0, 0x7fffffff

    return v0
.end method

.method protected static final inRangeOrUnavailable(IIII)I
    .registers 5

    if-lt p0, p1, :cond_4

    if-le p0, p2, :cond_a

    :cond_4
    if-eq p0, p3, :cond_a

    const v0, 0x7fffffff

    return v0

    :cond_a
    return p0
.end method

.method protected static final inRangeOrUnavailable(JJJ)J
    .registers 8

    cmp-long v0, p0, p2

    if-ltz v0, :cond_a

    cmp-long v0, p0, p4

    if-lez v0, :cond_9

    goto :goto_a

    :cond_9
    return-wide p0

    :cond_a
    :goto_a
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method private static isMcc(Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_21

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_20

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-le v3, v4, :cond_1d

    goto :goto_20

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_20
    :goto_20
    return v1

    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method private static isMnc(Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_10

    goto :goto_2e

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-le v2, v3, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2b
    :goto_2b
    return v1

    :cond_2c
    const/4 v0, 0x1

    return v0

    :cond_2e
    :goto_2e
    return v1
.end method

.method public static isValidPlmn(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_10

    goto :goto_27

    :cond_10
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/CellIdentity;->isMcc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/CellIdentity;->isMnc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1

    :cond_27
    :goto_27
    return v1
.end method


# virtual methods
.method public abstract asCellLocation()Landroid/telephony/CellLocation;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/telephony/CellIdentity;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellIdentity;

    iget v2, p0, Landroid/telephony/CellIdentity;->mType:I

    iget v3, v0, Landroid/telephony/CellIdentity;->mType:I

    if-ne v2, v3, :cond_39

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    nop

    :goto_3a
    return v1
.end method

.method public getChannelNumber()I
    .registers 2

    const v0, 0x7fffffff

    return v0
.end method

.method public getGlobalCellId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mGlobalCellId:Ljava/lang/String;

    return-object v0
.end method

.method public getMccString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    return-object v0
.end method

.method public getMncString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getPlmn()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_1f

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellIdentity;->mType:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentity;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSameCell(Landroid/telephony/CellIdentity;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    return v0

    :cond_f
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getGlobalCellId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getGlobalCellId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public setOperatorAlphaLong(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    return-void
.end method

.method public setOperatorAlphaShort(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    return-void
.end method

.method protected abstract updateGlobalCellId()V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
