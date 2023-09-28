# classes3.dex

.class public final Landroid/telephony/CellInfoTdscdma;
.super Landroid/telephony/CellInfo;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoTdscdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellInfoTdscdma"


# instance fields
.field private mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

.field private mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CellInfoTdscdma$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoTdscdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    invoke-direct {v0}, Landroid/telephony/CellIdentityTdscdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-void
.end method

.method public constructor <init>(IZJLandroid/telephony/CellIdentityTdscdma;Landroid/telephony/CellSignalStrengthTdscdma;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/CellInfo;-><init>(IZJ)V

    iput-object p5, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    iput-object p6, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/telephony/CellIdentityTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityTdscdma;

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    sget-object v0, Landroid/telephony/CellSignalStrengthTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthTdscdma;

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellInfoTdscdma;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    iget-object v0, p1, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityTdscdma;->copy()Landroid/telephony/CellIdentityTdscdma;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    iget-object v0, p1, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->copy()Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoTdscdma;
    .registers 2

    new-instance v0, Landroid/telephony/CellInfoTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoTdscdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "CellInfoTdscdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoTdscdma;

    iget-object v2, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    iget-object v3, v0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v2, v3}, Landroid/telephony/CellIdentityTdscdma;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    iget-object v3, v0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthTdscdma;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_1d} :catch_23

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    nop

    :goto_22
    return v1

    :catch_23
    move-exception v0

    return v1
.end method

.method public bridge synthetic getCellIdentity()Landroid/telephony/CellIdentity;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellInfoTdscdma;->getCellIdentity()Landroid/telephony/CellIdentityTdscdma;

    move-result-object v0

    return-object v0
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentityTdscdma;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    return-object v0
.end method

.method public bridge synthetic getCellSignalStrength()Landroid/telephony/CellSignalStrength;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellInfoTdscdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v0

    return-object v0
.end method

.method public getCellSignalStrength()Landroid/telephony/CellSignalStrengthTdscdma;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .registers 3

    new-instance v0, Landroid/telephony/CellInfoTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoTdscdma;-><init>(Landroid/telephony/CellInfoTdscdma;)V

    iget-object v1, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityTdscdma;->sanitizeLocationInfo()Landroid/telephony/CellIdentityTdscdma;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    return-object v0
.end method

.method public setCellIdentity(Landroid/telephony/CellIdentityTdscdma;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    return-void
.end method

.method public setCellSignalStrength(Landroid/telephony/CellSignalStrengthTdscdma;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CellInfoTdscdma:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x5

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellIdentityTdscdma:Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityTdscdma;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/telephony/CellInfoTdscdma;->mCellSignalStrengthTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthTdscdma;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
