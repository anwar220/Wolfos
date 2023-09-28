# classes2.dex

.class public final Landroid/media/VolumeShaper$Operation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Operation$Builder;,
        Landroid/media/VolumeShaper$Operation$Flag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumeShaper$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_CREATE_IF_NEEDED:I = 0x10

.field private static final FLAG_DEFER:I = 0x8

.field private static final FLAG_JOIN:I = 0x4

.field private static final FLAG_NONE:I = 0x0

.field private static final FLAG_PUBLIC_ALL:I = 0x3

.field private static final FLAG_REVERSE:I = 0x1

.field private static final FLAG_TERMINATE:I = 0x2

.field public static final PLAY:Landroid/media/VolumeShaper$Operation;

.field public static final REVERSE:Landroid/media/VolumeShaper$Operation;


# instance fields
.field private final mFlags:I

.field private final mReplaceId:I

.field private final mXOffset:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmFlags(Landroid/media/VolumeShaper$Operation;)I
    .registers 1

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReplaceId(Landroid/media/VolumeShaper$Operation;)I
    .registers 1

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmXOffset(Landroid/media/VolumeShaper$Operation;)F
    .registers 1

    iget p0, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->reverse()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    new-instance v0, Landroid/media/VolumeShaper$Operation$1;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$1;-><init>()V

    sput-object v0, Landroid/media/VolumeShaper$Operation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    iput p2, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    iput p3, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    return-void
.end method

.method synthetic constructor <init>(IIFLandroid/media/VolumeShaper$Operation-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Operation;-><init>(IIF)V

    return-void
.end method

.method private static flagsFromAidl(I)I
    .registers 3

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_19

    or-int/lit8 v0, v0, 0x8

    :cond_19
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_1f

    or-int/lit8 v0, v0, 0x10

    :cond_1f
    return v0
.end method

.method private static flagsToAidl(I)I
    .registers 3

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_19

    or-int/lit8 v0, v0, 0x8

    :cond_19
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_1f

    or-int/lit8 v0, v0, 0x10

    :cond_1f
    return v0
.end method

.method public static fromParcelable(Landroid/media/VolumeShaperOperation;)Landroid/media/VolumeShaper$Operation;
    .registers 5

    new-instance v0, Landroid/media/VolumeShaper$Operation;

    iget v1, p0, Landroid/media/VolumeShaperOperation;->flags:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Operation;->flagsFromAidl(I)I

    move-result v1

    iget v2, p0, Landroid/media/VolumeShaperOperation;->replaceId:I

    iget v3, p0, Landroid/media/VolumeShaperOperation;->xOffset:F

    invoke-direct {v0, v1, v2, v3}, Landroid/media/VolumeShaper$Operation;-><init>(IIF)V

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

    instance-of v0, p1, Landroid/media/VolumeShaper$Operation;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/media/VolumeShaper$Operation;

    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    iget v4, v2, Landroid/media/VolumeShaper$Operation;->mFlags:I

    if-ne v3, v4, :cond_25

    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    iget v4, v2, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    if-ne v3, v4, :cond_25

    iget v3, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    iget v4, v2, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_25

    move v1, v0

    goto :goto_26

    :cond_25
    nop

    :goto_26
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toParcelable()Landroid/media/VolumeShaperOperation;
    .registers 3

    new-instance v0, Landroid/media/VolumeShaperOperation;

    invoke-direct {v0}, Landroid/media/VolumeShaperOperation;-><init>()V

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-static {v1}, Landroid/media/VolumeShaper$Operation;->flagsToAidl(I)I

    move-result v1

    iput v1, v0, Landroid/media/VolumeShaperOperation;->flags:I

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    iput v1, v0, Landroid/media/VolumeShaperOperation;->replaceId:I

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    iput v1, v0, Landroid/media/VolumeShaperOperation;->xOffset:F

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeShaper.Operation{mFlags = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReplaceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mReplaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mXOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/VolumeShaper$Operation;->mXOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/media/VolumeShaper$Operation;->toParcelable()Landroid/media/VolumeShaperOperation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/media/VolumeShaperOperation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
