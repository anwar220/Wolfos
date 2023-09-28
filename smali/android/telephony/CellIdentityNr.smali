# classes3.dex

.class public final Landroid/telephony/CellIdentityNr;
.super Landroid/telephony/CellIdentity;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentityNr;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_NCI:J = 0xfffffffffL

.field private static final MAX_NRARFCN:I = 0x32093d

.field private static final MAX_PCI:I = 0x3ef

.field private static final MAX_TAC:I = 0xffffff

.field private static final TAG:Ljava/lang/String; = "CellIdentityNr"


# instance fields
.field private final mAdditionalPlmns:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBands:[I

.field private mCagInfo:Landroid/telephony/CagInfo;

.field private final mNci:J

.field private final mNrArfcn:I

.field private final mPci:I

.field private mSnpnInfo:Landroid/telephony/SnpnInfo;

.field private final mTac:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CellIdentityNr$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityNr$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityNr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const-string v1, "CellIdentityNr"

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    iput v0, p0, Landroid/telephony/CellIdentityNr;->mPci:I

    iput v0, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mGlobalCellId:Ljava/lang/String;

    new-instance v0, Landroid/telephony/SnpnInfo;

    invoke-direct {v0}, Landroid/telephony/SnpnInfo;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    new-instance v0, Landroid/telephony/CagInfo;

    invoke-direct {v0}, Landroid/telephony/CagInfo;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mCagInfo:Landroid/telephony/CagInfo;

    return-void
.end method

.method public constructor <init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    const-string v1, "CellIdentityNr"

    const/4 v2, 0x6

    move-object v0, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x3ef

    move v2, p1

    invoke-static {p1, v0, v1}, Landroid/telephony/CellIdentityNr;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, v7, Landroid/telephony/CellIdentityNr;->mPci:I

    const v1, 0xffffff

    move/from16 v3, p2

    invoke-static {v3, v0, v1}, Landroid/telephony/CellIdentityNr;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, v7, Landroid/telephony/CellIdentityNr;->mTac:I

    const v1, 0x32093d

    move/from16 v4, p3

    invoke-static {v4, v0, v1}, Landroid/telephony/CellIdentityNr;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, v7, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    move-object/from16 v0, p4

    iput-object v0, v7, Landroid/telephony/CellIdentityNr;->mBands:[I

    const-wide/16 v10, 0x0

    const-wide v12, 0xfffffffffL

    move-wide/from16 v8, p7

    invoke-static/range {v8 .. v13}, Landroid/telephony/CellIdentityNr;->inRangeOrUnavailable(JJJ)J

    move-result-wide v5

    iput-wide v5, v7, Landroid/telephony/CellIdentityNr;->mNci:J

    new-instance v1, Landroid/util/ArraySet;

    invoke-interface/range {p11 .. p11}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v1, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, v7, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-interface/range {p11 .. p11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/CellIdentityNr;->isValidPlmn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_69

    iget-object v6, v7, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_69
    goto :goto_52

    :cond_6a
    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->updateGlobalCellId()V

    return-void
.end method

.method public constructor <init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/SnpnInfo;Landroid/telephony/CagInfo;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/SnpnInfo;",
            "Landroid/telephony/CagInfo;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p11}, Landroid/telephony/CellIdentityNr;-><init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    iput-object p12, p0, Landroid/telephony/CellIdentityNr;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    iput-object p13, p0, Landroid/telephony/CellIdentityNr;->mCagInfo:Landroid/telephony/CagInfo;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const-string v0, "CellIdentityNr"

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityNr;->mPci:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    const-class v0, Landroid/telephony/SnpnInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/SnpnInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SnpnInfo;

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    const-class v0, Landroid/telephony/CagInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CagInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CagInfo;

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mCagInfo:Landroid/telephony/CagInfo;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->updateGlobalCellId()V

    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityNr;
    .registers 2

    new-instance v0, Landroid/telephony/CellIdentityNr;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityNr;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method


# virtual methods
.method public asCellLocation()Landroid/telephony/CellLocation;
    .registers 5

    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iget v1, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    const/4 v2, -0x1

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/telephony/CellIdentityNr;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityNr;

    invoke-super {p0, v1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget v3, p0, Landroid/telephony/CellIdentityNr;->mPci:I

    iget v4, v1, Landroid/telephony/CellIdentityNr;->mPci:I

    if-ne v3, v4, :cond_56

    iget v3, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    iget v4, v1, Landroid/telephony/CellIdentityNr;->mTac:I

    if-ne v3, v4, :cond_56

    iget v3, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    iget v4, v1, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    if-ne v3, v4, :cond_56

    iget-object v3, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    iget-object v4, v1, Landroid/telephony/CellIdentityNr;->mBands:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-wide v3, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    iget-wide v5, v1, Landroid/telephony/CellIdentityNr;->mNci:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_56

    iget-object v3, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Landroid/telephony/CellIdentityNr;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    iget-object v4, v1, Landroid/telephony/CellIdentityNr;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    invoke-static {v3, v4}, Landroid/telephony/CellIdentityNr;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p0, Landroid/telephony/CellIdentityNr;->mCagInfo:Landroid/telephony/CagInfo;

    iget-object v4, v1, Landroid/telephony/CellIdentityNr;->mCagInfo:Landroid/telephony/CagInfo;

    invoke-static {v3, v4}, Landroid/telephony/CellIdentityNr;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    goto :goto_57

    :cond_56
    move v0, v2

    :goto_57
    return v0
.end method

.method public getAdditionalPlmns()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getBands()[I
    .registers 3

    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getCagInfo()Landroid/telephony/CagInfo;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mCagInfo:Landroid/telephony/CagInfo;

    return-object v0
.end method

.method public getChannelNumber()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    return v0
.end method

.method public getMccString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mMccStr:Ljava/lang/String;

    return-object v0
.end method

.method public getMncString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mMncStr:Ljava/lang/String;

    return-object v0
.end method

.method public getNci()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    return-wide v0
.end method

.method public getNrarfcn()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    return v0
.end method

.method public getPci()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellIdentityNr;->mPci:I

    return v0
.end method

.method public getSnpnInfo()Landroid/telephony/SnpnInfo;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    return-object v0
.end method

.method public getTac()I
    .registers 2

    iget v0, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityNr;->mPci:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentityNr;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentityNr;->mCagInfo:Landroid/telephony/CagInfo;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->sanitizeLocationInfo()Landroid/telephony/CellIdentityNr;

    move-result-object v0

    return-object v0
.end method

.method public sanitizeLocationInfo()Landroid/telephony/CellIdentityNr;
    .registers 16

    new-instance v14, Landroid/telephony/CellIdentityNr;

    iget v3, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    iget-object v4, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    iget-object v5, p0, Landroid/telephony/CellIdentityNr;->mMccStr:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/CellIdentityNr;->mMncStr:Ljava/lang/String;

    iget-object v9, p0, Landroid/telephony/CellIdentityNr;->mAlphaLong:Ljava/lang/String;

    iget-object v10, p0, Landroid/telephony/CellIdentityNr;->mAlphaShort:Ljava/lang/String;

    iget-object v11, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    iget-object v12, p0, Landroid/telephony/CellIdentityNr;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    iget-object v13, p0, Landroid/telephony/CellIdentityNr;->mCagInfo:Landroid/telephony/CagInfo;

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const-wide v7, 0x7fffffffffffffffL

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/telephony/CellIdentityNr;-><init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/SnpnInfo;Landroid/telephony/CagInfo;)V

    return-object v14
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "CellIdentityNr"

    invoke-static {v0, p0}, Landroid/telephony/TelephonyBaseUtilsStub;->cellIdentityNrToString(Ljava/lang/String;Landroid/telephony/CellIdentityNr;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CellIdentityNr:{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " mPci = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityNr;->mPci:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTac = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNrArfcn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBands = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMcc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellIdentityNr;->mMccStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMnc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellIdentityNr;->mMncStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNci = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAlphaLong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellIdentityNr;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAlphaShort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellIdentityNr;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAdditionalPlmns = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSnpnInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellIdentityNr;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCagInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellIdentityNr;->mCagInfo:Landroid/telephony/CagInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected updateGlobalCellId()V
    .registers 7

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityNr;->mGlobalCellId:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityNr;->getPlmn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-wide v1, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_16

    return-void

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%09x"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellIdentityNr;->mGlobalCellId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x6

    invoke-super {p0, p1, v0}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/telephony/CellIdentityNr;->mPci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityNr;->mTac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityNr;->mNrArfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mBands:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-wide v0, p0, Landroid/telephony/CellIdentityNr;->mNci:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mSnpnInfo:Landroid/telephony/SnpnInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/CellIdentityNr;->mCagInfo:Landroid/telephony/CagInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
