# classes3.dex

.class public final Landroid/telephony/UiccPortInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UiccPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICCID_REDACTED:Ljava/lang/String; = "FFFFFFFFFFFFFFFFFFFF"


# instance fields
.field private final mIccId:Ljava/lang/String;

.field private final mIsActive:Z

.field private final mLogicalSlotIndex:I

.field private final mPortIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/UiccPortInfo$1;

    invoke-direct {v0}, Landroid/telephony/UiccPortInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/UiccPortInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/UiccPortInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    iput p2, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    iput p3, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    iput-boolean p4, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    return-void
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

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/UiccPortInfo;

    iget-object v3, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget v3, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    iget v4, v2, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    iget v4, v2, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    if-ne v3, v4, :cond_32

    iget-boolean v3, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    iget-boolean v4, v2, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    if-ne v3, v4, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    return v0

    :cond_34
    :goto_34
    return v1
.end method

.method public getIccId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogicalSlotIndex()I
    .registers 2

    iget v0, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    return v0
.end method

.method public getPortIndex()I
    .registers 2

    iget v0, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccPortInfo (isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iccId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", portIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogicalSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/UiccPortInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/UiccPortInfo;->mPortIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/UiccPortInfo;->mLogicalSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/UiccPortInfo;->mIsActive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
