# classes3.dex

.class public final Landroid/telephony/CellInfoLte;
.super Landroid/telephony/CellInfo;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfoLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellInfoLte"


# instance fields
.field private mCellConfig:Landroid/telephony/CellConfigLte;

.field private mCellIdentityLte:Landroid/telephony/CellIdentityLte;

.field private mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CellInfoLte$1;

    invoke-direct {v0}, Landroid/telephony/CellInfoLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfoLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    new-instance v0, Landroid/telephony/CellConfigLte;

    invoke-direct {v0}, Landroid/telephony/CellConfigLte;-><init>()V

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    return-void
.end method

.method public constructor <init>(IZJLandroid/telephony/CellIdentityLte;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellConfigLte;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/CellInfo;-><init>(IZJ)V

    iput-object p5, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    iput-object p6, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    iput-object p7, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/telephony/CellIdentityLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentityLte;

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    sget-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    sget-object v0, Landroid/telephony/CellConfigLte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellConfigLte;

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellInfoLte;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    iget-object v0, p1, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->copy()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    iget-object v0, p1, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    new-instance v0, Landroid/telephony/CellConfigLte;

    iget-object v1, p1, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    invoke-direct {v0, v1}, Landroid/telephony/CellConfigLte;-><init>(Landroid/telephony/CellConfigLte;)V

    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoLte;
    .registers 2

    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoLte;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "CellInfoLte"

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

    instance-of v0, p1, Landroid/telephony/CellInfoLte;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-super {p0, v0}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    iget-object v3, v0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v2, v3}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    iget-object v3, v0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v2, v3}, Landroid/telephony/CellSignalStrengthLte;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    iget-object v3, v0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    invoke-virtual {v2, v3}, Landroid/telephony/CellConfigLte;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    nop

    :goto_30
    return v1
.end method

.method public getCellConfig()Landroid/telephony/CellConfigLte;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    return-object v0
.end method

.method public bridge synthetic getCellIdentity()Landroid/telephony/CellIdentity;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    return-object v0
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentityLte;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    return-object v0
.end method

.method public bridge synthetic getCellSignalStrength()Landroid/telephony/CellSignalStrength;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    return-object v0
.end method

.method public getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    invoke-virtual {v1}, Landroid/telephony/CellConfigLte;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .registers 3

    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellInfoLte;-><init>(Landroid/telephony/CellInfoLte;)V

    iget-object v1, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->sanitizeLocationInfo()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    return-object v0
.end method

.method public setCellConfig(Landroid/telephony/CellConfigLte;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    return-void
.end method

.method public setCellIdentity(Landroid/telephony/CellIdentityLte;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    return-void
.end method

.method public setCellSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CellInfoLte:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x3

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityLte;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthLte;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellConfig:Landroid/telephony/CellConfigLte;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellConfigLte;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
