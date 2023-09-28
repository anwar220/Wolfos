# classes.dex

.class public final Landroid/hardware/DataSpace;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/DataSpace$NamedDataSpace;,
        Landroid/hardware/DataSpace$DataSpaceRange;,
        Landroid/hardware/DataSpace$DataSpaceTransfer;,
        Landroid/hardware/DataSpace$DataSpaceStandard;
    }
.end annotation


# static fields
.field public static final DATASPACE_ADOBE_RGB:I = 0x90b0000

.field public static final DATASPACE_BT2020:I = 0x8c60000

.field public static final DATASPACE_BT2020_PQ:I = 0x9c60000

.field public static final DATASPACE_BT601_525:I = 0x10c40000

.field public static final DATASPACE_BT601_625:I = 0x10c20000

.field public static final DATASPACE_BT709:I = 0x10c10000

.field public static final DATASPACE_DCI_P3:I = 0x94a0000

.field public static final DATASPACE_DISPLAY_P3:I = 0x88a0000

.field public static final DATASPACE_JFIF:I = 0x8c20000

.field public static final DATASPACE_SCRGB:I = 0x18810000

.field public static final DATASPACE_SCRGB_LINEAR:I = 0x18410000

.field public static final DATASPACE_SRGB:I = 0x8810000

.field public static final DATASPACE_SRGB_LINEAR:I = 0x8410000

.field public static final DATASPACE_UNKNOWN:I = 0x0

.field public static final RANGE_EXTENDED:I = 0x18000000

.field public static final RANGE_FULL:I = 0x8000000

.field public static final RANGE_LIMITED:I = 0x10000000

.field private static final RANGE_MASK:I = 0x38000000

.field public static final RANGE_UNSPECIFIED:I = 0x0

.field public static final STANDARD_ADOBE_RGB:I = 0xb0000

.field public static final STANDARD_BT2020:I = 0x60000

.field public static final STANDARD_BT2020_CONSTANT_LUMINANCE:I = 0x70000

.field public static final STANDARD_BT470M:I = 0x80000

.field public static final STANDARD_BT601_525:I = 0x40000

.field public static final STANDARD_BT601_525_UNADJUSTED:I = 0x50000

.field public static final STANDARD_BT601_625:I = 0x20000

.field public static final STANDARD_BT601_625_UNADJUSTED:I = 0x30000

.field public static final STANDARD_BT709:I = 0x10000

.field public static final STANDARD_DCI_P3:I = 0xa0000

.field public static final STANDARD_FILM:I = 0x90000

.field private static final STANDARD_MASK:I = 0x3f0000

.field public static final STANDARD_UNSPECIFIED:I = 0x0

.field public static final TRANSFER_GAMMA2_2:I = 0x1000000

.field public static final TRANSFER_GAMMA2_6:I = 0x1400000

.field public static final TRANSFER_GAMMA2_8:I = 0x1800000

.field public static final TRANSFER_HLG:I = 0x2000000

.field public static final TRANSFER_LINEAR:I = 0x400000

.field private static final TRANSFER_MASK:I = 0x7c00000

.field public static final TRANSFER_SMPTE_170M:I = 0xc00000

.field public static final TRANSFER_SRGB:I = 0x800000

.field public static final TRANSFER_ST2084:I = 0x1c00000

.field public static final TRANSFER_UNSPECIFIED:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRange(I)I
    .registers 2

    const/high16 v0, 0x38000000

    and-int/2addr v0, p0

    return v0
.end method

.method public static getStandard(I)I
    .registers 2

    const/high16 v0, 0x3f0000

    and-int/2addr v0, p0

    return v0
.end method

.method public static getTransfer(I)I
    .registers 2

    const/high16 v0, 0x7c00000

    and-int/2addr v0, p0

    return v0
.end method

.method public static pack(III)I
    .registers 6

    const/high16 v0, 0x3f0000

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_45

    const/high16 v0, 0x7c00000

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_2c

    const/high16 v0, 0x38000000

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_13

    or-int v0, p0, p1

    or-int/2addr v0, p2

    return v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid standard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
