# classes2.dex

.class public final Landroid/hardware/lights/Light;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/lights/Light$LightCapability;,
        Landroid/hardware/lights/Light$LightType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIGHT_CAPABILITY_BRIGHTNESS:I = 0x1

.field public static final LIGHT_CAPABILITY_RGB:I = 0x0

.field public static final LIGHT_TYPE_CAMERA:I = 0x9

.field public static final LIGHT_TYPE_INPUT:I = 0x2711

.field public static final LIGHT_TYPE_MICROPHONE:I = 0x8

.field public static final LIGHT_TYPE_PLAYER_ID:I = 0x2712


# instance fields
.field private final mCapabilities:I

.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mOrdinal:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/lights/Light$1;

    invoke-direct {v0}, Landroid/hardware/lights/Light$1;-><init>()V

    sput-object v0, Landroid/hardware/lights/Light;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 10

    const-string v2, "Light"

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/lights/Light;-><init>(ILjava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/lights/Light;->mId:I

    iput-object p2, p0, Landroid/hardware/lights/Light;->mName:Ljava/lang/String;

    iput p3, p0, Landroid/hardware/lights/Light;->mOrdinal:I

    iput p4, p0, Landroid/hardware/lights/Light;->mType:I

    iput p5, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/lights/Light;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/lights/Light;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/lights/Light;->mOrdinal:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/lights/Light;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/lights/Light-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/lights/Light;-><init>(Landroid/os/Parcel;)V

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

    instance-of v0, p1, Landroid/hardware/lights/Light;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Landroid/hardware/lights/Light;

    iget v2, p0, Landroid/hardware/lights/Light;->mId:I

    iget v3, v0, Landroid/hardware/lights/Light;->mId:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/hardware/lights/Light;->mOrdinal:I

    iget v3, v0, Landroid/hardware/lights/Light;->mOrdinal:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/hardware/lights/Light;->mType:I

    iget v3, v0, Landroid/hardware/lights/Light;->mType:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    iget v3, v0, Landroid/hardware/lights/Light;->mCapabilities:I

    if-ne v2, v3, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    :cond_22
    return v1
.end method

.method public getCapabilities()I
    .registers 2

    iget v0, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/hardware/lights/Light;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/lights/Light;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdinal()I
    .registers 2

    iget v0, p0, Landroid/hardware/lights/Light;->mOrdinal:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/hardware/lights/Light;->mType:I

    return v0
.end method

.method public hasBrightnessControl()Z
    .registers 3

    iget v0, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasRgbControl()Z
    .registers 3

    iget v0, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    const/4 v1, 0x0

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Landroid/hardware/lights/Light;->mId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/lights/Light;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/lights/Light;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/lights/Light;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Ordinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/lights/Light;->mOrdinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/lights/Light;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/lights/Light;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/lights/Light;->mOrdinal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/lights/Light;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/lights/Light;->mCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
