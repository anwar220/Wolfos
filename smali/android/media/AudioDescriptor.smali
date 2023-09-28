# classes2.dex

.class public Landroid/media/AudioDescriptor;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioDescriptor$AudioDescriptorStandard;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final STANDARD_EDID:I = 0x1

.field public static final STANDARD_NONE:I


# instance fields
.field private final mDescriptor:[B

.field private final mEncapsulationType:I

.field private final mStandard:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/AudioDescriptor$1;

    invoke-direct {v0}, Landroid/media/AudioDescriptor$1;-><init>()V

    sput-object v0, Landroid/media/AudioDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II[B)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioDescriptor;->mStandard:I

    iput p2, p0, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    iput-object p3, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDescriptor;->mStandard:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioDescriptor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioDescriptor;-><init>(Landroid/os/Parcel;)V

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

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/AudioDescriptor;

    iget v3, p0, Landroid/media/AudioDescriptor;->mStandard:I

    iget v4, v2, Landroid/media/AudioDescriptor;->mStandard:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    iget v4, v2, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    iget-object v4, v2, Landroid/media/AudioDescriptor;->mDescriptor:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    return v0

    :cond_2e
    :goto_2e
    return v1
.end method

.method public getDescriptor()[B
    .registers 2

    iget-object v0, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    return-object v0
.end method

.method public getEncapsulationType()I
    .registers 2

    iget v0, p0, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    return v0
.end method

.method public getStandard()I
    .registers 2

    iget v0, p0, Landroid/media/AudioDescriptor;->mStandard:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioDescriptor;->mStandard:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "standard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioDescriptor;->mStandard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", encapsulation type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    if-eqz v1, :cond_4d

    array-length v1, v1

    if-lez v1, :cond_4d

    const-string v1, ", descriptor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/media/AudioDescriptor;->mStandard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioDescriptor;->mEncapsulationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/AudioDescriptor;->mDescriptor:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
