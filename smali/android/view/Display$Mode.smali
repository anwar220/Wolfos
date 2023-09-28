# classes3.dex

.class public final Landroid/view/Display$Mode;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$Mode$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/view/Display$Mode;

.field public static final INVALID_MODE_ID:I = -0x1


# instance fields
.field private final mAlternativeRefreshRates:[F

.field private final mHeight:I

.field private final mModeId:I

.field private final mRefreshRate:F

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Display$Mode;

    sput-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    new-instance v0, Landroid/view/Display$Mode$1;

    invoke-direct {v0}, Landroid/view/Display$Mode$1;-><init>()V

    sput-object v0, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 11

    const/4 v0, 0x0

    new-array v6, v0, [F

    const/4 v2, -0x1

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/view/Display$Mode;-><init>(IIIF[F)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .registers 12

    const/4 v0, 0x0

    new-array v6, v0, [F

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/Display$Mode;-><init>(IIIF[F)V

    return-void
.end method

.method public constructor <init>(IIIF[F)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/Display$Mode;->mModeId:I

    iput p2, p0, Landroid/view/Display$Mode;->mWidth:I

    iput p3, p0, Landroid/view/Display$Mode;->mHeight:I

    iput p4, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    array-length v0, p5

    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/Display$Mode;-><init>(IIIF[F)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Display$Mode-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/Display$Mode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/view/Display$Mode;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/view/Display$Mode;

    iget v3, p0, Landroid/view/Display$Mode;->mModeId:I

    iget v4, v1, Landroid/view/Display$Mode;->mModeId:I

    if-ne v3, v4, :cond_2a

    iget v3, v1, Landroid/view/Display$Mode;->mWidth:I

    iget v4, v1, Landroid/view/Display$Mode;->mHeight:I

    iget v5, v1, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    iget-object v4, v1, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    :goto_2b
    return v0
.end method

.method public equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z
    .registers 4

    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    iget v1, p1, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    iget v1, p1, Landroid/view/Display$Mode;->mHeight:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public getAlternativeRefreshRates()[F
    .registers 2

    iget-object v0, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    return-object v0
.end method

.method public getModeId()I
    .registers 2

    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    return v0
.end method

.method public getPhysicalHeight()I
    .registers 2

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    return v0
.end method

.method public getPhysicalWidth()I
    .registers 2

    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    return v0
.end method

.method public getRefreshRate()F
    .registers 2

    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mModeId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mWidth:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mHeight:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x11

    iget v2, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public isRefreshRateSet()Z
    .registers 3

    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isResolutionSet()Z
    .registers 3

    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public matches(IIF)Z
    .registers 6

    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, p1, :cond_16

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    if-ne v0, p2, :cond_16

    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public matchesIfValid(IIF)Z
    .registers 7

    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p3}, Landroid/view/Display;->isRefreshRateValid(F)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    :cond_14
    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result v2

    if-eq v0, v2, :cond_1f

    return v1

    :cond_1f
    invoke-static {p1}, Landroid/view/Display;->isWidthValid(I)Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, p1, :cond_46

    :cond_29
    invoke-static {p2}, Landroid/view/Display;->isHeightValid(I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    if-ne v0, p2, :cond_46

    :cond_33
    invoke-static {p3}, Landroid/view/Display;->isRefreshRateValid(F)Z

    move-result v0

    if-eqz v0, :cond_47

    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v0, v2, :cond_46

    goto :goto_47

    :cond_46
    goto :goto_48

    :cond_47
    :goto_47
    const/4 v1, 0x1

    :goto_48
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alternativeRefreshRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/view/Display$Mode;->mAlternativeRefreshRates:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
