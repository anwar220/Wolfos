# classes4.dex

.class public final Landroid/window/SizeConfigurationBuckets;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/SizeConfigurationBuckets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHorizontal:[I

.field private final mScreenLayoutLongSet:Z

.field private final mScreenLayoutSize:[I

.field private final mSmallest:[I

.field private final mVertical:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/window/SizeConfigurationBuckets$1;

    invoke-direct {v0}, Landroid/window/SizeConfigurationBuckets$1;-><init>()V

    sput-object v0, Landroid/window/SizeConfigurationBuckets;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_15

    move-object v2, v3

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    :goto_19
    and-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_1f

    move-object v4, v3

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    :goto_23
    and-int/lit8 v5, v0, 0x4

    if-nez v5, :cond_29

    move-object v5, v3

    goto :goto_2d

    :cond_29
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    :goto_2d
    and-int/lit8 v6, v0, 0x8

    if-nez v6, :cond_32

    goto :goto_36

    :cond_32
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    :goto_36
    iput-object v2, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    iput-object v4, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    iput-object v5, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    iput-object v3, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    iput-boolean v1, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    return-void
.end method

.method public constructor <init>([I[I[I[IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    iput-object p2, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    iput-object p3, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    iput-object p4, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    iput-boolean p5, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    return-void
.end method

.method public constructor <init>([Landroid/content/res/Configuration;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v4, 0x0

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    :goto_1b
    if-ltz v5, :cond_51

    aget-object v6, p1, v5

    iget v7, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    const/4 v8, 0x0

    if-eqz v7, :cond_29

    iget v7, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    :cond_29
    iget v7, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v7, :cond_32

    iget v7, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    :cond_32
    iget v7, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v7, :cond_3b

    iget v7, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v2, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3b
    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    move v9, v7

    if-eqz v7, :cond_45

    invoke-virtual {v3, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    :cond_45
    if-nez v4, :cond_4e

    iget v7, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0x30

    if-eqz v7, :cond_4e

    const/4 v4, 0x1

    :cond_4e
    add-int/lit8 v5, v5, -0x1

    goto :goto_1b

    :cond_51
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v5

    iput-object v5, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v5

    iput-object v5, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v5

    iput-object v5, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v5

    iput-object v5, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    iput-boolean v4, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static areNonSizeLayoutFieldsUnchanged(II)Z
    .registers 5

    const v0, 0x100003c0

    const v1, 0x100003c0

    and-int v2, p0, v1

    and-int/2addr v1, p1

    if-ne v2, v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method private crossesHorizontalSizeThreshold(II)Z
    .registers 4

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    invoke-static {v0, p1, p2}, Landroid/window/SizeConfigurationBuckets;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private crossesScreenLayoutLongThreshold(II)Z
    .registers 6

    and-int/lit8 v0, p1, 0x30

    and-int/lit8 v1, p2, 0x30

    iget-boolean v2, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    if-eqz v2, :cond_c

    if-eq v0, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method public static crossesSizeThreshold([III)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_7
    if-ltz v1, :cond_17

    aget v3, p0, v1

    if-ge p1, v3, :cond_f

    if-ge p2, v3, :cond_13

    :cond_f
    if-lt p1, v3, :cond_14

    if-ge p2, v3, :cond_14

    :cond_13
    return v2

    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_17
    return v0
.end method

.method private crossesSmallestSizeThreshold(II)Z
    .registers 4

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    invoke-static {v0, p1, p2}, Landroid/window/SizeConfigurationBuckets;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method private crossesVerticalSizeThreshold(II)Z
    .registers 4

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    invoke-static {v0, p1, p2}, Landroid/window/SizeConfigurationBuckets;->crossesSizeThreshold([III)Z

    move-result v0

    return v0
.end method

.method public static filterDiff(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;)I
    .registers 8

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0, v1}, Landroid/window/SizeConfigurationBuckets;->areNonSizeLayoutFieldsUnchanged(II)Z

    move-result v0

    if-nez p3, :cond_12

    if-eqz v0, :cond_f

    and-int/lit16 v1, p0, -0xd01

    return v1

    :cond_f
    and-int/lit16 v1, p0, -0xc01

    return v1

    :cond_12
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_32

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {p3, v1, v2}, Landroid/window/SizeConfigurationBuckets;->crossesHorizontalSizeThreshold(II)Z

    move-result v1

    if-nez v1, :cond_2d

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-direct {p3, v1, v2}, Landroid/window/SizeConfigurationBuckets;->crossesVerticalSizeThreshold(II)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v1, 0x1

    :goto_2e
    if-nez v1, :cond_32

    and-int/lit16 p0, p0, -0x401

    :cond_32
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_42

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {p3, v1, v2}, Landroid/window/SizeConfigurationBuckets;->crossesSmallestSizeThreshold(II)Z

    move-result v3

    if-nez v3, :cond_42

    and-int/lit16 p0, p0, -0x801

    :cond_42
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_5a

    if-eqz v0, :cond_5a

    invoke-virtual {p3, p1, p2}, Landroid/window/SizeConfigurationBuckets;->crossesScreenLayoutSizeThreshold(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_5a

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-direct {p3, v1, v2}, Landroid/window/SizeConfigurationBuckets;->crossesScreenLayoutLongThreshold(II)Z

    move-result v1

    if-nez v1, :cond_5a

    and-int/lit16 p0, p0, -0x101

    :cond_5a
    return p0
.end method


# virtual methods
.method public crossesScreenLayoutSizeThreshold(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 11

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    return v2

    :cond_c
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {p2, v0}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_18

    return v1

    :cond_18
    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    if-eqz v0, :cond_30

    array-length v3, v0

    move v4, v2

    :goto_1e
    if-ge v4, v3, :cond_30

    aget v5, v0, v4

    invoke-virtual {p1, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v6

    invoke-virtual {p2, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v7

    if-eq v6, v7, :cond_2d

    return v1

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_30
    return v2
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontal()[I
    .registers 2

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    return-object v0
.end method

.method public getScreenLayoutSize()[I
    .registers 2

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    return-object v0
.end method

.method public getSmallest()[I
    .registers 2

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    return-object v0
.end method

.method public getVertical()[I
    .registers 2

    iget-object v0, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    return-object v0
.end method

.method public isScreenLayoutLongSet()Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutLongSet:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    :cond_8
    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_f
    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    if-eqz v1, :cond_16

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_16
    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    if-eqz v1, :cond_1d

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_1d
    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    if-eqz v1, :cond_24

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mHorizontal:[I

    if-eqz v1, :cond_2e

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_2e
    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mVertical:[I

    if-eqz v1, :cond_35

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_35
    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mSmallest:[I

    if-eqz v1, :cond_3c

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_3c
    iget-object v1, p0, Landroid/window/SizeConfigurationBuckets;->mScreenLayoutSize:[I

    if-eqz v1, :cond_43

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_43
    return-void
.end method
