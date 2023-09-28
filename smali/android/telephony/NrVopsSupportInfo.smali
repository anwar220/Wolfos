# classes3.dex

.class public final Landroid/telephony/NrVopsSupportInfo;
.super Landroid/telephony/VopsSupportInfo;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NrVopsSupportInfo$NrEmfStatus;,
        Landroid/telephony/NrVopsSupportInfo$NrEmcStatus;,
        Landroid/telephony/NrVopsSupportInfo$NrVopsStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/NrVopsSupportInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NR_STATUS_EMC_5GCN_ONLY:I = 0x1

.field public static final NR_STATUS_EMC_EUTRA_5GCN_ONLY:I = 0x2

.field public static final NR_STATUS_EMC_NOT_SUPPORTED:I = 0x0

.field public static final NR_STATUS_EMC_NR_EUTRA_5GCN:I = 0x3

.field public static final NR_STATUS_EMF_5GCN_ONLY:I = 0x1

.field public static final NR_STATUS_EMF_EUTRA_5GCN_ONLY:I = 0x2

.field public static final NR_STATUS_EMF_NOT_SUPPORTED:I = 0x0

.field public static final NR_STATUS_EMF_NR_EUTRA_5GCN:I = 0x3

.field public static final NR_STATUS_VOPS_3GPP_SUPPORTED:I = 0x1

.field public static final NR_STATUS_VOPS_NON_3GPP_SUPPORTED:I = 0x2

.field public static final NR_STATUS_VOPS_NOT_SUPPORTED:I


# instance fields
.field private final mEmcSupport:I

.field private final mEmfSupport:I

.field private final mVopsSupport:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/NrVopsSupportInfo$1;

    invoke-direct {v0}, Landroid/telephony/NrVopsSupportInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/NrVopsSupportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Landroid/telephony/VopsSupportInfo;-><init>()V

    iput p1, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    iput p2, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    iput p3, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/VopsSupportInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/NrVopsSupportInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/NrVopsSupportInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/NrVopsSupportInfo;
    .registers 2

    new-instance v0, Landroid/telephony/NrVopsSupportInfo;

    invoke-direct {v0, p0}, Landroid/telephony/NrVopsSupportInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    instance-of v1, p1, Landroid/telephony/NrVopsSupportInfo;

    if-nez v1, :cond_8

    goto :goto_23

    :cond_8
    const/4 v1, 0x1

    if-ne p0, p1, :cond_c

    return v1

    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/telephony/NrVopsSupportInfo;

    iget v3, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    iget v4, v2, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    if-ne v3, v4, :cond_22

    iget v3, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    iget v4, v2, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    if-ne v3, v4, :cond_22

    iget v3, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    iget v4, v2, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    if-ne v3, v4, :cond_22

    move v0, v1

    :cond_22
    return v0

    :cond_23
    :goto_23
    return v0
.end method

.method public getEmcSupport()I
    .registers 2

    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    return v0
.end method

.method public getEmfSupport()I
    .registers 2

    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    return v0
.end method

.method public getVopsSupport()I
    .registers 2

    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmergencyServiceFallbackSupported()Z
    .registers 2

    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isEmergencyServiceSupported()Z
    .registers 2

    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isVopsSupported()Z
    .registers 2

    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NrVopsSupportInfo :  mVopsSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmcSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEmfSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x6

    invoke-super {p0, p1, p2, v0}, Landroid/telephony/VopsSupportInfo;->writeToParcel(Landroid/os/Parcel;II)V

    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mVopsSupport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmcSupport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/NrVopsSupportInfo;->mEmfSupport:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
